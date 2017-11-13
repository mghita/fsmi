view: looker_sav_non_isa_dashboard {
  sql_table_name: BOIFS.LOOKER_SAV_DASHBOARD_DATA ;;

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: sav_balance {
    type: sum
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${balance};;
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

  dimension_group: accounting_date {
    type: time
    timeframes: [date, week, month, year, raw]
    convert_tz: no
    sql: ${TABLE}.ACCOUNTING_DATE ;;
  }

  dimension_group: extractdate {
    type: time
    timeframes: [date, week, month, year, raw]
    convert_tz: no
    sql: ${TABLE}.EXTRACTDATE ;;
  }

  dimension: balance {
    type: string
    sql: ${TABLE}.BALANCE ;;
  }

  set: detail {
    fields: [
      account_number,
      sav_product,
      medium,
      source,
      account_status,
      itocode,
      balance
    ]
  }
}
