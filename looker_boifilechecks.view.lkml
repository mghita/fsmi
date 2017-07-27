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

  dimension: comments_updt {
    type: string
    sql:
    case when ${TABLE}.FILECOUNT = 1 then 'File loaded with 0 records'
      else ${TABLE}.COMMENTS
    end;;
  }

  set: detail {
    fields: [
      type,
      filename,
      frequency,
      file_date,
      comments,
      count,
      filecount
    ]
  }
  }
