view: looker_mortgage_data {
  sql_table_name: BOIFS.LOOKER_HM_TEST ;;


  measure: count {
    type: count_distinct
    drill_fields: [detail*]
    sql: ${TABLE}.ACCNUMBER ;;
  }

  measure: count_cust_key {
    type: count_distinct
    drill_fields: [detail*]
    sql: ${TABLE}.CUSTOMER_KEY ;;
  }


  measure: total_loan_amount {
    type: sum
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${tot_loan_amt};;
  }

  measure: avg_loan_amount {
    type: number
    drill_fields: [detail*]
    value_format: "\"£\"#,##0.0,\" K\""
    sql: ${total_loan_amount}/${count};;
  }

  measure: avg_day_to_sale {
    type: average
    drill_fields: [detail*]
    sql: ${TABLE}.DT_SALE_RECEIVED;;
    value_format: "0"
    filters: {field:status value: "1.Completion"}
  }

  measure: avg_day_to_offer {
    type: average
    drill_fields: [detail*]
    sql: ${TABLE}.DT_STAT_CHANGE_RECEIVED;;
    value_format: "0"
    filters: {field:status value: "2.Offered"}
  }

  measure: avg_day_to_received {
    type: average
    drill_fields: [detail*]
    sql: ${TABLE}.DT_ENQ_RECEIVED;;
    value_format: "0"
    filters: {field:status value: "3.Application Received"}
  }

  dimension: accnumber {
    type: string
    sql: ${TABLE}.ACCNUMBER ;;
  }

  dimension: customer_key {
    type: string
    sql: ${TABLE}.customer_key ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension_group: enquire_dt {
    type: time
    timeframes: [date, week, month, year, raw]
    convert_tz: no
    sql: ${TABLE}.ENQUIRYDATE ;;
  }

  dimension_group: extract_dt {
    type: time
    timeframes: [date, week, month, year, raw]
    convert_tz: no
    sql: ${TABLE}.EXTRACTDATE ;;
  }

  dimension: cancelreason {
    type: string
    sql: ${TABLE}.CANCELREASON ;;
  }

  dimension: declinereason {
    type: string
    sql: ${TABLE}.DECLINEREASON ;;
  }

  dimension: term_length {
    type: string
    sql: ${TABLE}.term_length ;;
  }

  dimension: product_fee {
    type: number
    sql: ${TABLE}.product_fee ;;
    value_format_name: "gbp_0"
  }

  dimension: loanamount {
    type: string
    sql: ${TABLE}.LOANAMOUNT ;;
  }

  dimension: totpurchaseprice {
    type: string
    sql: ${TABLE}.TOTPURCHASEPRICE ;;
  }

  dimension: totappincome {
    type: string
    sql: ${TABLE}.TOTAPPINCOME ;;
  }

  dimension: jointsoleapplication {
    type: string
    sql: ${TABLE}.JOINTSOLEAPPLICATION ;;
  }

  dimension: numbedrooms {
    type: string
    sql: ${TABLE}.NUMBEDROOMS ;;
  }

  dimension: loan_to_value {
    type: string
    sql: ${TABLE}.LOAN_TO_VALUE ;;
  }

  dimension: cust_type {
    type: string
    sql: ${TABLE}.CUST_TYPE ;;
  }

  dimension: app_sale_dt_diff {
    type: string
    sql: ${TABLE}.APP_SALE_DT_DIFF ;;
  }

  dimension: app_status_dt_diff {
    type: string
    sql: ${TABLE}.APP_STATUS_DT_DIFF ;;
  }

  dimension: dt_diff_appreceived_today {
    type: string
    sql: ${TABLE}.DT_DIFF ;;
  }

  dimension: rate {
    type: number
    value_format: "0.00\%"
    sql: 100.0*${TABLE}.RATE ;;
  }

  dimension: dt_sale_received {
    type: string
    sql: ${TABLE}.DT_SALE_RECEIVED ;;
  }

  dimension: dt_stat_change_received {
    type: string
    sql: ${TABLE}.DT_STAT_CHANGE_RECEIVED ;;
  }

  dimension: dt_enq_received  {
    type: string
    sql: ${TABLE}.DT_ENQ_RECEIVED ;;
  }

  dimension: member_flag  {
    type: string
    sql: ${TABLE}.MEMBER_FLAG ;;
  }

  dimension: tot_loan_amt {
    type: string
    sql: ${TABLE}.TOT_LOAN_AMT ;;
  }


  set: detail {
    fields: [
      accnumber,
      customer_key,
      status,
      cancelreason,
      declinereason,
      term_length,
      product_fee,
      loanamount,
      totpurchaseprice,
      totappincome,
      jointsoleapplication,
      numbedrooms,
      loan_to_value,
      cust_type,
      app_sale_dt_diff,
      app_status_dt_diff,
      dt_diff_appreceived_today,
      rate,
      dt_sale_received,
      dt_stat_change_received,
      dt_enq_received,
      member_flag,
      tot_loan_amt
    ]
  }
}
