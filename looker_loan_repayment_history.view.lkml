view: looker_loan_repayment_history {
  sql_table_name: BOIFS.LOOKER_LOAN_REPAYMENT_HISTORY ;;

  measure: count {
    type: count
  }

  measure: count_active {
    type: count
    filters: {field: monthendnetbalance  value: "> 0"}
  }

  measure: outstanding_net_balance {
    type: sum
    value_format: "\"£\"#,##0.0,\" K\""
    filters: {field: monthendnetbalance  value: "> 0"}
    sql: ${TABLE}.monthendnetbalance ;;
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
    sql: ${TABLE}.INITIALTERM ;;
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
