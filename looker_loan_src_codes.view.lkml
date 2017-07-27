view: looker_loan_src_codes {
  sql_table_name: BOIFS.LOOKER_LOAN_SRC_CODES ;;

  dimension: channel_source {
    type: string
    sql: ${TABLE}.CHANNEL_SOURCE ;;
  }

  dimension: source_code {
    type: string
    sql: ${TABLE}.SOURCE_CODE ;;
  }

  dimension: source_group {
    type: string
    sql: ${TABLE}.SOURCE_GROUP ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
