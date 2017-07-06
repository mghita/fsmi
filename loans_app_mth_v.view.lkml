view: loans_app_mth_v {
  sql_table_name: BOIFS.LOANS_APP_MTH_V ;;

  dimension: application_decision {
    type: string
    sql: ${TABLE}.APPLICATION_DECISION ;;
  }

  dimension_group: calendar {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.CALENDAR_DATE ;;
  }

  dimension: final_decision {
    type: string
    sql: ${TABLE}.FINAL_DECISION ;;
  }

  dimension: nmbr {
    type: string
    sql: ${TABLE}.NMBR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
