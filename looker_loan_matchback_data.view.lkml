view: looker_loan_matchback_data {
 sql_table_name: boifs.looker_loan_matchback_data;;


  measure: counts {
    type: count
    drill_fields: [detail*]
  }

  measure: count_apps {
    type: count
    filters: {field:application_id value: "-NULL"}
  }
  measure: count_accepted_apps {
    type: count
    filters: {field:application_decision value: "%Accept%"}
  }

  measure: count_taken_up_apps {
    type: count
    filters: {field:final_decision value: "Taken Up"}
  }

  measure: pct_apps_of_all_comms {
    type: number
    value_format: "0.00\%"
    sql: 100*${count_apps}/NULLIF(${counts},0);;
  }

  measure: pct_accepted_of_all_apps {
    type: number
    value_format: "0.00\%"
    sql: 100*${count_accepted_apps}/NULLIF(${count_apps},0);;
  }

  measure: pct_takenup_of_all_apps {
    type: number
    value_format: "0.00\%"
    sql: 100.0*${count_taken_up_apps}/NULLIF(${count_apps},0);;
  }

  measure: pct_takenup_of_accepted_apps {
    type: number
    value_format: "0.00\%"
    sql: 100.0*${count_taken_up_apps}/NULLIF(${count_accepted_apps},0);;
  }
  dimension: campaign_code {
    type: string
    sql: ${TABLE}.CAMPAIGN_CODE ;;
  }

  dimension: contact_date {
    type: date
    sql: ${TABLE}.CONTACT_DATE ;;
  }

  dimension: communication_date {
    type: date
    sql: ${TABLE}.COMMUNICATION_DATE ;;
  }

  dimension: offer_code {
    type: string
    sql: ${TABLE}.OFFER_CODE ;;
  }

  dimension: segment_description {
    type: string
    sql: ${TABLE}.SEGMENT_DESCRIPTION ;;
  }

  dimension: treatment_cell_code {
    type: string
    sql: ${TABLE}.TREATMENT_CELL_CODE ;;
  }

  dimension: fallow_flag {
    type: string
    sql: ${TABLE}.FALLOW_FLAG ;;
  }

  dimension: application_id {
    type: string
    sql: ${TABLE}.APPLICATION_ID ;;
  }

  dimension: application_number {
    type: string
    sql: ${TABLE}.APPLICATION_NUMBER ;;
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

  dimension: loanpurpose {
    type: string
    sql: ${TABLE}.LOANPURPOSE ;;
  }

  dimension: source_code {
    type: string
    sql: ${TABLE}.SOURCE_CODE ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.PRODUCT_NAME ;;
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

  dimension: weighted_loan_term_application {
    type: string
    sql: ${TABLE}.WEIGHTED_LOAN_TERM_APPLICATION ;;
  }

  dimension: weighted_loan_term_final {
    type: string
    sql: ${TABLE}.WEIGHTED_LOAN_TERM_FINAL ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.MEDIUM ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.SOURCE ;;
  }

  set: detail {
    fields: [
      campaign_code,
      contact_date,
      communication_date,
      offer_code,
      segment_description,
      treatment_cell_code,
      application_id,
      application_number,
      application_date,
      loan_amount_applied,
      loan_term_application,
      loan_apr,
      loanpurpose,
      source_code,
      product_name,
      initial_application_decision,
      init_application_decision_dt,
      application_decision,
      application_decision_date,
      final_decision,
      final_decision_date,
      loan_amount_agreed,
      loan_term_agreed,
      weighted_apr_final,
      weighted_loan_term_application,
      weighted_loan_term_final,
      medium,
      source
    ]
  }
}
