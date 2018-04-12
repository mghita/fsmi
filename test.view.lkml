view: test {
  derived_table: {
    sql: select * from boifs.looker_mortgage
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: accnumber {
    type: string
    sql: ${TABLE}.ACCNUMBER ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: enquirydate {
    type: date
    sql: ${TABLE}.ENQUIRYDATE ;;
  }

  dimension: extractdate {
    type: date
    sql: ${TABLE}.EXTRACTDATE ;;
  }

  dimension: applicationreceiveddate {
    type: date
    sql: ${TABLE}.APPLICATIONRECEIVEDDATE ;;
  }

  dimension: saledate {
    type: date
    sql: ${TABLE}.SALEDATE ;;
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
    sql: ${TABLE}.TERM_LENGTH ;;
  }

  dimension: product_fee {
    type: string
    sql: ${TABLE}.PRODUCT_FEE ;;
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

  dimension: dt_diff {
    type: string
    sql: ${TABLE}.DT_DIFF ;;
  }

  dimension: rate {
    type: string
    sql: ${TABLE}.RATE ;;
  }

  dimension: dt_sale_received {
    type: string
    sql: ${TABLE}.DT_SALE_RECEIVED ;;
  }

  dimension: dt_stat_change_received {
    type: string
    sql: ${TABLE}.DT_STAT_CHANGE_RECEIVED ;;
  }

  dimension: dt_received_to_today {
    type: string
    sql: ${TABLE}.DT_RECEIVED_TO_TODAY ;;
  }

  dimension: member_flag {
    type: string
    sql: ${TABLE}.MEMBER_FLAG ;;
  }

  dimension: blended_rate {
    type: string
    sql: ${TABLE}.BLENDED_RATE ;;
  }

  dimension: margin {
    type: string
    sql: ${TABLE}.MARGIN ;;
  }

  dimension: year_2 {
    type: string
    sql: ${TABLE}.YEAR_2 ;;
  }

  dimension: year_3 {
    type: string
    sql: ${TABLE}.YEAR_3 ;;
  }

  dimension: producttypecode {
    type: string
    sql: ${TABLE}.PRODUCTTYPECODE ;;
  }

  dimension: tot_loan_amt {
    type: string
    sql: ${TABLE}.TOT_LOAN_AMT ;;
  }

  set: detail {
    fields: [
      accnumber,
      status,
      enquirydate,
      extractdate,
      applicationreceiveddate,
      saledate,
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
      dt_diff,
      rate,
      dt_sale_received,
      dt_stat_change_received,
      dt_received_to_today,
      member_flag,
      blended_rate,
      margin,
      year_2,
      year_3,
      producttypecode,
      tot_loan_amt
    ]
  }
}
