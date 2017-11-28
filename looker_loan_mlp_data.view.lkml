view: looker_loan_mlp_data {
  sql_table_name:boifs.looker_loan_mlp_data  ;;

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: avg_amount {
    type: average
    value_format: "\"£\"#,##0.0,\" K\""
    drill_fields: [detail*]
    sql: ${TABLE}.LOAN_AMOUNT_APPLIED;;
  }

  dimension: msm_mlp_flag {
    type: string
    sql: ${TABLE}.MSM_MLP_FLAG ;;
  }

  dimension: email_mlp_flag {
    type: string
    sql: ${TABLE}.EMAIL_MLP_FLAG ;;
  }

  dimension: all_channels_mlp_flag {
    type: string
    sql: ${TABLE}.ALL_CHANNELS_MLP_FLAG ;;
  }

  dimension: any_mlp_flag {
    type: string
    sql: ${TABLE}.ANY_MLP_FLAG ;;
  }

  dimension: application_id {
    type: string
    sql: ${TABLE}.APPLICATION_ID ;;
  }

  dimension_group: application {
    type: time
    timeframes: [date, week, month, year]
    convert_tz: no
    sql: ${TABLE}.APPLICATION_DATE ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}.MEDIUM ;;
  }

  dimension: MSM_group {
    type: string
    sql: case when ${TABLE}.SOURCE = 'Moneysupermarket' then  ${TABLE}.SOURCE else 'Other Aggregators' end;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.SOURCE ;;
  }

  measure: loan_amount_applied {
    type: sum
    sql: ${TABLE}.LOAN_AMOUNT_APPLIED ;;
  }

  measure: loan_term_application {
    type: string
    sql: ${TABLE}.LOAN_TERM_APPLICATION ;;
  }

  dimension: loan_apr {
    type: string
    sql: ${TABLE}.LOAN_APR ;;
  }

  dimension: loan_tier
  {type:tier
    tiers: [1000,3000,5000,7500,15000,25000]
    style:integer
    sql:loan_amount_applied;;
    value_format: "\"£\"#,##0.0,\"K\""
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

  measure: loan_amount_agreed {
    type: sum
    sql: ${TABLE}.LOAN_AMOUNT_AGREED ;;
  }

  dimension: loan_term_agreed {
    type: string
    sql: ${TABLE}.LOAN_TERM_AGREED ;;
  }

  measure: weighted_apr_at_application {
    type: sum
    sql: ${TABLE}.WEIGHTED_APR_AT_APPLICATION ;;
  }

  measure: weighted_apr_final {
    type: sum
    sql: ${TABLE}.WEIGHTED_APR_FINAL ;;
  }

  measure: weighted_loan_term_application {
    type: sum
    sql: ${TABLE}.WEIGHTED_LOAN_TERM_APPLICATION ;;
  }

  measure: weighted_loan_term_final {
    type: sum
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
