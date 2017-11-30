view: looker_mortgage_data {
  sql_table_name: BOIFS.LOOKER_HM_TEST ;;


  measure: count {
    type: count_distinct
    drill_fields: [detail*]
    sql: ${TABLE}.ACCNUMBER ;;
  }


  measure: total_loan_amount {
    type: sum
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${tot_loan_amt};;
  }

  dimension: accnumber {
    type: string
    sql: ${TABLE}.ACCNUMBER ;;
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

  dimension: tot_loan_amt {
    type: string
    sql: ${TABLE}.TOT_LOAN_AMT ;;
  }

  dimension: rate {
    type: string
    sql: ${TABLE}.RATE ;;
  }

  set: detail {
    fields: [
      accnumber,
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
      tot_loan_amt,
      rate
    ]
  }
}
