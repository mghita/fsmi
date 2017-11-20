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

  dimension: days_to_follow_up {
    type: number
    sql: ${TABLE}.DAYS_TO_FOLLOW_UP;;
  }

  dimension: days_between_comms_and_app {
    type: number
    sql: to_date(${TABLE}.APPLICATION_DATE) - to_date(${TABLE}.COMMUNICATION_DATE);;
  }

  dimension: days_between_comms_and_app_grouped {
    type: string
    sql:
      case when ${days_between_comms_and_app} between 0 and 10 then '1. Within 10 days'
        when ${days_between_comms_and_app} between 11 and 20 then '2. Between 11 and 20 days after'
        when ${days_between_comms_and_app} between 21 and 30 then '3. Between 21 and 30 days after'
        when ${days_between_comms_and_app} between 31 and 40 then '4. Between 31 and 40 days after'
        when ${days_between_comms_and_app} between 41 and 50 then '5. Between 41 and 50 days after'
        when ${days_between_comms_and_app} between 51 and 60 then '6. Between 51 and 60 days after'
      end
    ;;
  }

  dimension: app_pre_or_post_follow_up {
    type: string
    sql:
      case when ${follow_up_flag} = 'No Follow Up' then ${follow_up_flag}
        when ${follow_up_flag} = 'Follow Up' and ${days_between_comms_and_app}  < ${days_to_follow_up} then 'Before Follow Up'
        when ${follow_up_flag} = 'Follow Up' and ${days_between_comms_and_app}  >= ${days_to_follow_up} then 'After Follow Up'

      end
    ;;
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

  dimension: follow_up_flag {
    type: string
    sql: ${TABLE}.FOLLOW_UP_FLAG ;;
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

  dimension: initial_opened {
    type: string
    sql: ${TABLE}.INITIAL_OPENED ;;
  }

  dimension: fup_opened {
    type: string
    sql: ${TABLE}.FUP_OPENED ;;
  }

  dimension: initial_clicked {
    type: string
    sql: ${TABLE}.INITIAL_CLICKED ;;
  }

  dimension: fup_clicked {
    type: string
    sql: ${TABLE}.FUP_CLICKED ;;
  }

  dimension: initial_unsubscribed {
    type: string
    sql: ${TABLE}.INITIAL_UNSUBSCRIBED ;;
  }

  dimension: fup_unsubscribed {
    type: string
    sql: ${TABLE}.FUP_UNSUBSCRIBED ;;
  }

  dimension: initial_complaint {
    type: string
    sql: ${TABLE}.INITIAL_COMPLAINT ;;
  }

  dimension: fup_complaint {
    type: string
    sql: ${TABLE}.FUP_COMPLAINT ;;
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
