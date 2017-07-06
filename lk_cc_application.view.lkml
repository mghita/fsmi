view: lk_cc_application {
  sql_table_name: BOIFS.LK_CC_APPLICATION ;;

  dimension_group: app_approved {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.APP_APPROVED_DATE ;;
  }

  dimension_group: app_rejected {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.APP_REJECTED_DATE ;;
  }

  dimension_group: application {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.APPLICATION_DATE ;;
  }

  dimension: application_number {
    type: string
    sql: ${TABLE}.APPLICATION_NUMBER ;;
  }

  dimension: balance_transfer_flag {
    type: string
    sql: ${TABLE}.BALANCE_TRANSFER_FLAG ;;
  }

  dimension: balance_transfer_value {
    type: string
    sql: ${TABLE}.BALANCE_TRANSFER_VALUE ;;
  }

  dimension: card_protection_flag {
    type: string
    sql: ${TABLE}.CARD_PROTECTION_FLAG ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.CHANNEL ;;
  }

  dimension: colleague_flag {
    type: string
    sql: ${TABLE}.COLLEAGUE_FLAG ;;
  }

  dimension: customer_ref {
    type: string
    sql: ${TABLE}.CUSTOMER_REF ;;
  }

  dimension: employee_decline_override {
    type: string
    sql: ${TABLE}.EMPLOYEE_DECLINE_OVERRIDE ;;
  }

  dimension_group: extract {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.EXTRACT_DATE ;;
  }

  dimension: form_type {
    type: string
    sql: ${TABLE}.FORM_TYPE ;;
  }

  dimension: hau {
    type: string
    sql: ${TABLE}.HAU ;;
  }

  dimension: product_sub_type_code {
    type: string
    sql: ${TABLE}.PRODUCT_SUB_TYPE_CODE ;;
  }

  dimension: product_type_code {
    type: string
    sql: ${TABLE}.PRODUCT_TYPE_CODE ;;
  }

  dimension: response_code {
    type: string
    sql: ${TABLE}.RESPONSE_CODE ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension_group: status_amended {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.STATUS_AMENDED_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
