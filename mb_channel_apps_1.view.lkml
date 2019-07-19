view: mb_channel_apps_1 {
  sql_table_name: BOIFS.MB_CHANNEL_APPS_1 ;;


  dimension: d_stop {
    type: date
    sql: ${TABLE}.D_STOP ;;
  }

  dimension: customer_key {
    type: string
    sql: ${TABLE}.CUSTOMER_KEY ;;
  }


  dimension: application_id {
    type: string
    sql: ${TABLE}.APPLICATION_ID ;;
  }


  dimension: application_date {
    type: date
    sql: ${TABLE}.APPLICATION_DATE ;;
  }

  dimension: loan_amount_applied {
    type: string
    sql: ${TABLE}.LOAN_AMOUNT_APPLIED ;;
  }

  dimension: loan_term_application {
    type: string
    sql: ${TABLE}.LOAN_TERM_APPLICATION ;;
  }

  dimension: loan_apr {
    type: string
    sql: ${TABLE}.LOAN_APR ;;
  }

  dimension: loan_tier {
    type: string
    sql: ${TABLE}.LOAN_TIER ;;
  }

  dimension: loan_term_tier {
    type: string
    sql: ${TABLE}.LOAN_TERM_TIER ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.CHANNEL ;;
  }

  dimension: initial_application_decision {
    type: string
    sql: ${TABLE}.INITIAL_APPLICATION_DECISION ;;
  }

  dimension: init_application_decision_dt {
    type: date
    sql: ${TABLE}.INIT_APPLICATION_DECISION_DT ;;
  }

  dimension: application_decision {
    type: string
    sql: ${TABLE}.APPLICATION_DECISION ;;
  }

  dimension: application_decision_date {
    type: date
    sql: ${TABLE}.APPLICATION_DECISION_DATE ;;
  }

  dimension: final_decision {
    type: string
    sql: ${TABLE}.FINAL_DECISION ;;
  }

  dimension: final_decision_date {
    type: date
    sql: ${TABLE}.FINAL_DECISION_DATE ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}.ACCOUNT_NUMBER ;;
  }

  dimension: loan_amount_agreed {
    type: string
    sql: ${TABLE}.LOAN_AMOUNT_AGREED ;;
  }

  dimension: loan_term_agreed {
    type: string
    sql: ${TABLE}.LOAN_TERM_AGREED ;;
  }

  dimension: weighted_apr_final {
    type: string
    sql: ${TABLE}.WEIGHTED_APR_FINAL ;;
  }

  dimension: weighted_loan_term_final {
    type: string
    sql: ${TABLE}.WEIGHTED_LOAN_TERM_FINAL ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.SOURCE ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.MEDIUM ;;
  }

  set: detail {
    fields: [
      d_stop,
      customer_key,
      application_id,
      application_date,
      loan_amount_applied,
      loan_term_application,
      loan_apr,
      loan_tier,
      loan_term_tier,
      channel,
      initial_application_decision,
      init_application_decision_dt,
      application_decision,
      application_decision_date,
      final_decision,
      final_decision_date,
      account_number,
      loan_amount_agreed,
      loan_term_agreed,
      weighted_apr_final,
      weighted_loan_term_final,
      source,
      medium
    ]
  }
}
