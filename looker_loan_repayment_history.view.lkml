view: looker_loan_repayment_history {
  sql_table_name: BOIFS.LOOKER_LOAN_REPAYMENT_HISTORY ;;

  dimension: primary_key {
    primary_key: yes
    type: string
    hidden: yes
    sql:  ${TABLE}.accountnumber ;;
  }

  measure: count {
    type: count
  }

  measure: count_distinct {
    type: count_distinct
    sql_distinct_key: ${primary_key};;
    sql: ${TABLE}.accountnumber ;;
  }

  measure: count_active {
    type: count
    filters: {field: monthendnetbalance  value: "> 0"}
  }

  measure: count_active_distinct {
    type: count_distinct
    filters: {field: monthendnetbalance  value: "> 0"}
    sql_distinct_key: ${primary_key};;
    sql: ${TABLE}.accountnumber ;;
  }

  measure: outstanding_net_balance {
    type: sum_distinct
    sql_distinct_key: ${primary_key};;
    value_format: "\"£\"#,##0.0,\" K\""
    sql: ${TABLE}.monthendnetbalance ;;
  }

  measure: outstanding_gross_balance {
    type: sum_distinct
    sql_distinct_key: ${primary_key};;
    value_format: "\"£\"#,##0.0,\" K\""
    sql: ${TABLE}.monthendgrossbalance ;;
  }

  measure: total_expected_net_balance {
    type: sum_distinct
    sql_distinct_key: ${primary_key};;
    value_format: "\"£\"#,##0.0,\" K\""
    sql: ${TABLE}.expected_net_balance ;;
  }

  measure: total_expected_gross_balance {
    type: sum_distinct
    sql_distinct_key: ${primary_key};;
    value_format: "\"£\"#,##0.0,\" K\""
    sql: ${TABLE}.expected_gross_balance ;;
  }

  measure: total_initial_gross_balance {
    type: sum_distinct
    sql_distinct_key: ${primary_key};;
    value_format: "\"£\"#,##0.0,\" K\""
    sql: ${TABLE}.initialgrossbalance ;;
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

  dimension: paymentnumber {
    type: number
    sql: ${TABLE}.PAYMENTNUMBER ;;
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
