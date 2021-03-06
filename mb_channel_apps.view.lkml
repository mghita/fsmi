view:  mb_channel_apps
  {
    sql_table_name: BOIFS.mb_channel_apps ;;
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

  dimension_group: application_date {
    type: time
    timeframes: [date, week, month, year]
    convert_tz: no
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

  dimension: initial_application_decision {
    type: string
    sql: ${TABLE}.INITIAL_APPLICATION_DECISION ;;
  }

  dimension_group: init_application_decision_dt {
    type: time
    timeframes: [date, week, month, year]
    convert_tz: no
    sql: ${TABLE}.INIT_APPLICATION_DECISION_DT ;;
  }

  dimension: application_decision {
    type: string
    sql: ${TABLE}.APPLICATION_DECISION ;;
  }

  dimension_group: application_decision_date {
    type: time
    timeframes: [date, week, month, year]
    convert_tz: no
    sql: ${TABLE}.APPLICATION_DECISION_DATE ;;
  }

  dimension: final_decision {
    type: string
    sql: ${TABLE}.FINAL_DECISION ;;
  }

  dimension_group: final_decision_date {
    type: time
    timeframes: [date, week, month, year]
    convert_tz: no
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

  dimension: weighted_loan_term_final {
    type: string
    sql: ${TABLE}.WEIGHTED_LOAN_TERM_FINAL ;;
  }

  dimension: app_channel {
    type: string
    sql: ${TABLE}.APP_CHANNEL ;;
  }

  measure: count_accepted_apps {
    type: count
    drill_fields: [app_channel, count_accepted_apps]
    filters: {field:application_decision value:"%Accept%"}
  }

    measure: count_declined_apps {
      type: count
      drill_fields: [app_channel, count_declined_apps]
      filters: {field:application_decision value:"%Decline%"}
    }

    measure: count_refer_apps {
      type: count
      drill_fields: [app_channel, count_refer_apps]
      filters: {field:application_decision value:"Refer"}
    }

    measure: count_sales {
      type: count
      drill_fields: [app_channel, count_sales]
      filters: {field:final_decision value:"Taken Up"}
    }

    measure: counts {
      type: count_distinct
      drill_fields: [app_channel, counts]
      sql: ${TABLE}.APPLICATION_ID ;;
      sql_distinct_key: ${application_id};;
    }

}
