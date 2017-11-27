view: looker_loan_mlp_data {
  sql_table_name:boifs.looker_loan_mlp_data  ;;

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: msm_mlp_flag {
    type: string
    sql: ${TABLE}.MSM_MLP_FLAG ;;
  }

  dimension: all_channels_mlp_flag {
    type: string
    sql: ${TABLE}.ALL_CHANNELS_MLP_FLAG ;;
  }

  dimension: application_id {
    type: string
    sql: ${TABLE}.APPLICATION_ID ;;
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

  dimension: initial_application_decision {
    type: string
    sql: ${TABLE}.INITIAL_APPLICATION_DECISION ;;
  }

  dimension: application_decision {
    type: string
    sql: ${TABLE}.APPLICATION_DECISION ;;
  }

  dimension: final_decision {
    type: string
    sql: ${TABLE}.FINAL_DECISION ;;
  }

  dimension: loan_amount_agreed {
    type: string
    sql: ${TABLE}.LOAN_AMOUNT_AGREED ;;
  }

  dimension: loan_term_agreed {
    type: string
    sql: ${TABLE}.LOAN_TERM_AGREED ;;
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

  set: detail {
    fields: [
      msm_mlp_flag,
      all_channels_mlp_flag,
      application_id,
      loan_amount_applied,
      loan_term_application,
      loan_apr,
      loan_tier,
      loan_term_tier,
      initial_application_decision,
      application_decision,
      final_decision,
      loan_amount_agreed,
      loan_term_agreed,
      weighted_apr_at_application,
      weighted_apr_final,
      weighted_loan_term_application,
      weighted_loan_term_final
    ]
  }
}
