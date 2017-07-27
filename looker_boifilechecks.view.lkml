view: looker_boifilechecks {
  sql_table_name: BOIFS.LOOKER_BOIFILECHECKS;;

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.FILENAME ;;
  }

  dimension: frequency {
    type: string
    sql: ${TABLE}.FREQUENCY ;;
  }

  dimension_group: file {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.FILEDATE ;;
  }

  measure: filecount {
    type: sum
    sql: ${TABLE}.FILECOUNT ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.COMMENTS ;;
  }

  set: detail {
    fields: [
      type,
      filename,
      frequency,
      file_date,
      filecount,
      comments
    ]
  }
  }
