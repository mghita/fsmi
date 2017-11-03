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

  dimension: itocode {
    type: string
    sql: ${TABLE}.ITOCODE ;;
  }

  dimension: activation_date {
    type: date
    sql: ${TABLE}.ACTIVATION_DATE ;;
  }

  dimension: accounting_date {
    type: date
    sql: ${TABLE}.ACCOUNTING_DATE ;;
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
      activation_date,
      accounting_date,
      balance
    ]
  }
}
