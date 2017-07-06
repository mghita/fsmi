view: ro_calendar {
  sql_table_name: BOIFS.RO_CALENDAR ;;

  dimension_group: calendar {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.CALENDAR_DATE ;;
  }

  dimension: day_of_calendar {
    type: string
    sql: ${TABLE}.DAY_OF_CALENDAR ;;
  }

  dimension: day_of_month {
    type: string
    sql: ${TABLE}.DAY_OF_MONTH ;;
  }

  dimension: day_of_week {
    type: string
    sql: ${TABLE}.DAY_OF_WEEK ;;
  }

  dimension: day_of_year {
    type: string
    sql: ${TABLE}.DAY_OF_YEAR ;;
  }

  dimension: end_of_month {
    type: string
    sql: ${TABLE}.END_OF_MONTH ;;
  }

  dimension: end_of_week {
    type: string
    sql: ${TABLE}.END_OF_WEEK ;;
  }

  dimension: month_of_caelndar {
    type: string
    sql: ${TABLE}.MONTH_OF_CAELNDAR ;;
  }

  dimension: month_of_quarter {
    type: string
    sql: ${TABLE}.MONTH_OF_QUARTER ;;
  }

  dimension: month_of_year {
    type: string
    sql: ${TABLE}.MONTH_OF_YEAR ;;
  }

  dimension: quarter_of_year {
    type: string
    sql: ${TABLE}.QUARTER_OF_YEAR ;;
  }

  dimension: week_of_calendar {
    type: string
    sql: ${TABLE}.WEEK_OF_CALENDAR ;;
  }

  dimension: week_of_month {
    type: string
    sql: ${TABLE}.WEEK_OF_MONTH ;;
  }

  dimension: week_of_year {
    type: string
    sql: ${TABLE}.WEEK_OF_YEAR ;;
  }

  dimension: year_of_calendar {
    type: string
    sql: ${TABLE}.YEAR_OF_CALENDAR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
