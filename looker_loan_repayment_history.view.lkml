view: looker_loan_repayment_history {
  sql_table_name: BOIFS.LOOKER_LOAN_REPAYMENT_ANALYSIS;;

  dimension: primary_key {
    primary_key: yes
    type: string
    hidden: yes
    sql:  ${TABLE}.accountnumber ;;
  }

  measure: count {
    type: count
  }

  measure: count_active {
    type: count
    filters: {field: monthendnetbalance  value: "> 0"}
    filters: {field: payment_number_numeric  value: ">= 1"}
    }

  measure: count_active_first_month {
    type: count
    filters: {field: monthendnetbalance  value: "> 0"}
    filters: {field: payment_number_numeric  value: "= 1"}
  }

  measure: net_balance_first_month {
    type: sum
    value_format: "\"£\"#,##0.0,\" K\""
    filters: {field: monthendnetbalance  value: "> 0"}
    filters: {field: payment_number_numeric  value: "= 1"}
    sql: ${TABLE}.monthendnetbalance ;;
  }

  measure: pct_still_active {
    type: number
    value_format: "0.0\%"
    sql: 100*${count_active}/NULLIF(${count_active_first_month},0) ;;
  }

  measure: outstanding_net_balance {
    type: sum
    filters: {field: monthendnetbalance  value: "> 0"}
    value_format: "\"£\"#,##0.0,\" K\""
    sql: ${TABLE}.monthendnetbalance ;;
  }

  measure: outstanding_gross_balance {
    type: sum
    filters: {field: monthendnetbalance  value: "> 0"}
    value_format: "\"£\"#,##0.0,\" K\""
    sql: ${TABLE}.monthendgrossbalance ;;
  }

  measure: total_expected_net_balance {
    type: sum
    value_format: "\"£\"#,##0.0,\" K\""
    sql: ${TABLE}.expected_net_balance ;;
  }

  measure: total_expected_gross_balance {
    type: sum
    value_format: "\"£\"#,##0.0,\" K\""
    sql: ${TABLE}.expected_gross_balance ;;
  }

  measure: total_initial_gross_balance {
    type: sum_distinct
    sql_distinct_key: ${primary_key};;
    value_format: "\"£\"#,##0.0,\" K\""
    sql: ${TABLE}.initialgrossbalance ;;
  }

  measure: total_initial_net_balance {
    type: sum_distinct
    sql_distinct_key: ${primary_key};;
    value_format: "\"£\"#,##0.0,\" K\""
    sql: ${TABLE}.initialnetbalance ;;
  }

  measure: expected_gross_balance_outstanding_pct {
    type: number
    value_format: "0.0\%"
    sql: 100*${total_expected_gross_balance}/NULLIF(${total_initial_gross_balance},0) ;;
  }

  measure: actual_gross_balance_outstanding_pct {
    type: number
    value_format: "0.0\%"
    sql: 100*${outstanding_gross_balance}/NULLIF(${total_initial_gross_balance},0) ;;
  }

  measure: expected_net_balance_outstanding_pct {
    type: number
    value_format: "0.0\%"
    sql: 100*${total_expected_net_balance}/NULLIF(${total_initial_net_balance},0) ;;
  }

  measure: actual_net_balance_outstanding_pct {
    type: number
    value_format: "0.0\%"
    sql: 100*${outstanding_net_balance}/NULLIF(${total_initial_net_balance},0) ;;
  }

  measure: diff_net_balance_pct {
    type: number
    sql: 100*${total_expected_net_balance}/NULLIF(${outstanding_net_balance},0)-100;;
  }

  measure: diff_gross_balance_pct {
    type: number
    value_format: "0.0\%"
    sql: 100*${total_expected_gross_balance}/NULLIF(${outstanding_gross_balance},0)-100;;
  }

  measure: contractual_repayment_paid {
    type: number
    value_format: "0.0\%"
    sql: 100*sum(${TABLE}.total_actual_payment)/NULLIF(${total_initial_net_balance},0)  ;;
  }


  measure: total {
    type: number
    sql: case when  ${actual_net_balance_outstanding_pct}+coalesce(${overpayment_paid},0)+coalesce(${early_settlement_paid},0) <> ${expected_net_balance_outstanding_pct} then 1 else 0 end;;
  }

  measure: total_amt {
    type: number
    sql: ${TABLE}.monthendnetbalance+coalesce(${TABLE}.overpayment_paid,0)+coalesce(${TABLE}.early_settlement_paid,0);;
  }

  measure: early_settlement_paid {
    type: number
    value_format: "0.0\%"
    sql: 100*sum(${TABLE}.early_settlement_paid)/NULLIF(${total_initial_net_balance},0)  ;;
  }

  measure: overpayment_paid {
    type: number
    value_format: "0.0\%"
    sql: 100*sum(${TABLE}.overpayment_paid)/NULLIF(${total_initial_net_balance},0);;
  }

  measure: error_net_balance_outstanding {
    type: number
    value_format: "0.0\%"
    sql: 100*sum(${TABLE}.error_net_balance_outstanding)/NULLIF(${total_initial_net_balance},0);;
  }

  dimension: drawdown_lt_reporting_mth {
    type:  string
    hidden: yes
    sql:
        case when  ${reporting_month} > ${drawdown_month} then 'Yes'
          when ${reporting_month} = ${drawdown_month} then 'No'
        end
    ;;
  }

  dimension: accountnumber {
    type: string
    sql: ${TABLE}.ACCOUNTNUMBER ;;
  }

  dimension_group: drawdown {
    type: time
    timeframes: [date, week, month, year]
    convert_tz: no
    sql: ${TABLE}.DRAWDOWN_DATE ;;
  }

  dimension: initialterm {
    type: string
    sql: ${TABLE}.INITIALTERM || ' Months' ;;
  }

  dimension: initialgrossbalance {
    type: number
    sql: ${TABLE}.INITIALGROSSBALANCE ;;
  }

  dimension: initialnetbalance {
    type: number
    sql: ${TABLE}.INITIALNETBALANCE ;;
  }

  dimension_group: reporting {
    type: time
    timeframes: [date, week, month, year]
    convert_tz: no
    sql: ${TABLE}.REPORTING_DATE ;;
  }

  dimension: monthendgrossbalance {
    type: number
    sql: ${TABLE}.MONTHENDGROSSBALANCE ;;
  }

  dimension: monthendnetbalance {
    type: number
    sql: ${TABLE}.MONTHENDNETBALANCE ;;
  }

  dimension: payment_number_numeric {
    type: number
    sql: ${TABLE}.PAYMENTNUMBER ;;
  }

  dimension: payment_number_character {
    type: string
    sql: 'Payment '||${TABLE}.PAYMENTNUMBER ;;
  }

  dimension: riskscoretier {
    type: string
    sql: ${TABLE}.RISKSCORETIER ;;
  }

  dimension: riskbandtier {
    type: string
    sql: ${TABLE}.RISKBANDTIER ;;
  }

  dimension: loanamounttier {
    type: string
    sql: ${TABLE}.LOANAMOUNTTIER ;;
  }

  dimension: expected_payments_made {
    type: number
    sql: ${TABLE}.EXPECTED_PAYMENTS_MADE;;
  }

  dimension: paymentamount {
    type: number
    sql: ${TABLE}.PAYMENTAMOUNT ;;
  }

  dimension: principalamount {
    type: number
    sql: ${TABLE}.PRINCIPALAMOUNT ;;
  }

  dimension: expected_gross_balance {
    type: number
    sql: ${TABLE}.EXPECTED_GROSS_BALANCE ;;
  }

  dimension: expected_net_balance {
    type: number
    sql: ${TABLE}.EXPECTED_NET_BALANCE ;;
  }

  dimension: ever_in_arrears {
    type: number
    sql: ${TABLE}.EVER_IN_ARREARS ;;
    full_suggestions: yes
  }

  dimension: charge_off_flag {
    type: number
    sql: ${TABLE}.CHARGE_OFF_FLAG ;;
    full_suggestions: yes
  }

  set: detail {
    fields: [
      accountnumber,
      drawdown_date,
      initialterm,
      initialgrossbalance,
      initialnetbalance,
      reporting_date,
      monthendgrossbalance,
      monthendnetbalance
    ]
  }
}
