view: looker_dandelion_codes {

  sql_table_name: BOIFS.looker_dandelion_codes ;;

  dimension: source_code {
    type: string
    sql: ${TABLE}.SOURCE_CODE ;;
  }

  dimension_group: start
  {
    type: time
    timeframes: [date, week, month, year]
    convert_tz: no
    sql:${TABLE}.START_DATE;;
  }

}
