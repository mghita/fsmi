view: look_sav_non_isa_account {
  sql_table_name: BOIFS.LOOK_SAV_NON_ISA_ACCOUNT ;;

  dimension: account_number {
    type: string
    sql: ${TABLE}.ACCOUNT_NUMBER ;;
  }

  dimension: account_status {
    type: string
    sql: ${TABLE}.ACCOUNT_STATUS ;;
  }

  dimension_group: activation {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.ACTIVATION_DATE ;;
  }

  dimension_group: calendar {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.CALENDAR_DATE ;;
  }

  dimension_group: cancel {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.CANCEL_DATE ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.CHANNEL ;;
  }

  dimension: clearedforvalue {
    type: string
    sql: ${TABLE}.CLEAREDFORVALUE ;;
  }

  dimension: close_amount {
    type: string
    sql: ${TABLE}.CLOSE_AMOUNT ;;
  }

  dimension_group: closed {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.CLOSED_DATE ;;
  }

  dimension: customer_number {
    type: string
    sql: ${TABLE}.CUSTOMER_NUMBER ;;
  }

  dimension: itocode {
    type: string
    sql: ${TABLE}.ITOCODE ;;
  }

  dimension: open_amount {
    type: string
    sql: ${TABLE}.OPEN_AMOUNT ;;
  }

  dimension: participation {
    type: string
    sql: ${TABLE}.PARTICIPATION ;;
  }

  dimension: subproductname {
    type: string
    sql: ${TABLE}.SUBPRODUCTNAME ;;
  }

  measure: count {
    type: count
    drill_fields: [subproductname]
  }
}
