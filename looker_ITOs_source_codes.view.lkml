view: looker_ITOs_source_codes {
  sql_table_name: BOIFS.LOOKER_ITOS_SOURCE_CODES ;;

  dimension: category  {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: code  {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: medium  {
    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension: source  {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension_group: start {
    type: time
    timeframes: [date, week, month, year]
    convert_tz: no
    sql: ${TABLE}.start ;;
  }

  dimension_group: end {
    type: time
    timeframes: [date, week, month, year]
    convert_tz: no
    sql: ${TABLE}.end ;;
  }
  measure: count {
    type: count
    drill_fields: []
  }
}
