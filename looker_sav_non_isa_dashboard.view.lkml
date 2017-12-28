view: looker_sav_non_isa_dashboard {
  sql_table_name: BOIFS.LOOKER_SAV_DASHBOARD_DATA ;;

  measure: count {
    type: count_distinct
    drill_fields: [detail*]
    sql: ${TABLE}.ACCOUNT_NUMBER ;;
  }

  measure: sav_balance {
    type: sum
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${balance};;
  }

  measure: sav_balance_outflow {
    type: sum
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${balance_outflow};;
  }

  measure: sav_balance_inflow {
    type: sum
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${balance_inflow};;
  }

  measure: sav_pit_balance {
    type: sum
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${pit_balance};;
  }

  measure: sav_pit_balance_outflow {
    type: sum
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${pit_balance_outflow};;
  }

  measure: sav_pit_balance_inflow {
    type: sum
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${pit_balance_inflow};;
  }

  measure: sav_pit_bal_acc_dt {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend};;
  }

  measure: avg_balance_per_acc {
    type: number
    drill_fields: [detail*]
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

  dimension: subproductname {
    type: string
    sql: ${TABLE}.SUBPRODUCTNAME ;;
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

  dimension: balance_outflow {
    type: string
    sql: ${TABLE}.BALANCE_OUTFLOW ;;
  }

  dimension: balance_inflow {
    type: string
    sql: ${TABLE}.BALANCE_INFLOW ;;
  }

  dimension: pit_balance {
    type: string
    sql: ${TABLE}.PIT_BALANCE ;;
  }

  dimension: pit_balance_outflow {
    type: string
    sql: ${TABLE}.PIT_BALANCE_OUTFLOW ;;
  }

  dimension: pit_balance_inflow {
    type: string
    sql: ${TABLE}.PIT_BALANCE_INFLOW ;;
  }

  dimension: member_flag {
    type: string
    sql: ${TABLE}.MEMBER_FLAG ;;
  }

  dimension: new_cust_flag {
    type: string
    sql: ${TABLE}.NEW_CUST_FLAG ;;
  }

  dimension: cumulative_spend {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND ;;
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
      balance_outflow,
      balance_inflow,
      pit_balance,
      pit_balance_outflow,
      pit_balance_inflow,
      member_flag,
      new_cust_flag,
      cumulative_spend

    ]
  }
}
