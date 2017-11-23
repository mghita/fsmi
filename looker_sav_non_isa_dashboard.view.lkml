view: looker_sav_non_isa_dashboard {
  sql_table_name: BOIFS.LOOKER_SAV_DASHBOARD_DATA ;;

  measure: count {
    type: count_distinct
    drill_fields: [detail*]
    sql: ${TABLE}.ACCOUNT_NUMBER ;;
  }

  measure: sav_balance {
    type: sum
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${balance};;
  }

  measure: avg_balance_per_acc {
    type: number
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${sav_balance}/NULLIF(${count},0);;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}.ACCOUNT_NUMBER ;;
  }

  dimension: sav_product {
    type: string
    sql: ${TABLE}.SAV_PRODUCT ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.MEDIUM ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.SOURCE ;;
  }

  dimension: account_status {
    type: string
    sql: ${TABLE}.ACCOUNT_STATUS ;;
  }

  dimension: balance_group {
    type: string
    sql: ${TABLE}.BALANCE_GROUP ;;
  }

  dimension: itocode {
    type: string
    sql: ${TABLE}.ITOCODE ;;
  }

  dimension_group: activation {
    type: time
    timeframes: [date, week, month, year, raw]
    convert_tz: no
    sql: ${TABLE}.ACTIVATION_DATE ;;
  }

  dimension_group: accounting {
    type: time
    timeframes: [date, week, month, year, raw]
    convert_tz: no
    sql: ${TABLE}.ACCOUNTING_DATE ;;
  }

  dimension_group: extract {
    type: time
    timeframes: [date, week, month, year, raw]
    convert_tz: no
    sql: ${TABLE}.EXTRACTDATE ;;
  }

  dimension: balance {
    type: string
    sql: ${TABLE}.BALANCE ;;
  }

  dimension: member_flag {
    type: string
    sql: ${TABLE}.MEMBER_FLAG ;;
  }

  set: detail {
    fields: [
      account_number,
      sav_product,
      medium,
      source,
      account_status,
      itocode,
      balance,
      member_flag

    ]
  }
}
