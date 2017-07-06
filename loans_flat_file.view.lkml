view: loans_flat_file {
  sql_table_name: BOIFS.LOANS_FLAT_FILE ;;

  dimension: account_number {
    type: string
    sql: ${TABLE}.ACCOUNT_NUMBER ;;
  }

  dimension_group: application {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.APPLICATION_DATE ;;
  }

  dimension: application_decision {
    type: string
    sql: ${TABLE}.APPLICATION_DECISION ;;
  }

  dimension_group: application_decision {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.APPLICATION_DECISION_DATE ;;
  }

  dimension: application_id {
    type: string
    sql: ${TABLE}.APPLICATION_ID ;;
  }

  dimension: application_number {
    type: string
    sql: ${TABLE}.APPLICATION_NUMBER ;;
  }

  dimension: channel_source {
    type: string
    sql: ${TABLE}.CHANNEL_SOURCE ;;
  }

  dimension: final_decision {
    type: string
    sql: ${TABLE}.FINAL_DECISION ;;
  }

  dimension_group: final_decision {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.FINAL_DECISION_DATE ;;
  }

  dimension_group: init_application_decision_dt {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.INIT_APPLICATION_DECISION_DT ;;
  }

  dimension: initial_application_decision {
    type: string
    sql: ${TABLE}.INITIAL_APPLICATION_DECISION ;;
  }

  dimension: loan_aer {
    type: string
    sql: ${TABLE}.LOAN_AER ;;
  }

  dimension: loan_amount_agreed {
    type: string
    sql: ${TABLE}.LOAN_AMOUNT_AGREED ;;
  }

  dimension: loan_amount_applied {
    type: string
    sql: ${TABLE}.LOAN_AMOUNT_APPLIED ;;
  }

  dimension: loan_apr {
    type: string
    sql: ${TABLE}.LOAN_APR ;;
  }

  dimension: loan_term_agreed {
    type: string
    sql: ${TABLE}.LOAN_TERM_AGREED ;;
  }

  dimension: loan_term_application {
    type: string
    sql: ${TABLE}.LOAN_TERM_APPLICATION ;;
  }

  dimension: loan_term_tier {
    type: string
    sql: ${TABLE}.LOAN_TERM_TIER ;;
  }

  dimension: loan_tier {
    type: string
    sql: ${TABLE}.LOAN_TIER ;;
  }

  dimension: loanpurpose {
    type: string
    sql: ${TABLE}.LOANPURPOSE ;;
  }

  dimension: monthly_repayment_amt_at_appl {
    type: string
    sql: ${TABLE}.MONTHLY_REPAYMENT_AMT_AT_APPL ;;
  }

  dimension: net_monthly_income_tier {
    type: string
    sql: ${TABLE}.NET_MONTHLY_INCOME_TIER ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.PRODUCT_NAME ;;
  }

  dimension: source_code {
    type: string
    sql: ${TABLE}.SOURCE_CODE ;;
  }

  dimension: source_group {
    type: string
    sql: ${TABLE}.SOURCE_GROUP ;;
  }

  dimension: total_payable_amt_at_applicat {
    type: string
    sql: ${TABLE}.TOTAL_PAYABLE_AMT_AT_APPLICAT ;;
  }

  dimension: weighted_apr_at_application {
    type: string
    sql: ${TABLE}.WEIGHTED_APR_AT_APPLICATION ;;
  }

  dimension: weighted_apr_final {
    type: string
    sql: ${TABLE}.WEIGHTED_APR_FINAL ;;
  }

  dimension: weighted_loan_term_application {
    type: string
    sql: ${TABLE}.WEIGHTED_LOAN_TERM_APPLICATION ;;
  }

  dimension: weighted_loan_term_final {
    type: string
    sql: ${TABLE}.WEIGHTED_LOAN_TERM_FINAL ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
