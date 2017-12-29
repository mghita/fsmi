view: looker_sav_isa_dashboard {
  sql_table_name: BOIFS.LOOKER_SAV_ISA_DASHBOARD_DATA ;;

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

  measure: sav_pit_balance {
    type: sum
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${pit_balance};;
  }

  measure: sav_pit_bal_cont_dt {
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

  dimension: prod_code {
    type: string
    sql: ${TABLE}.PROD_CODE ;;
  }

  dimension: enquiry_source_channel {
    type: string
    sql: ${TABLE}.ENQUIRY_SOURCE_CHANNEL ;;
  }

  dimension_group: extract_date {
    type: time
    timeframes: [date, week, month, year, raw]
    convert_tz: no
    sql: ${TABLE}.EXTRACT_DATE ;;
  }

  dimension_group: application_date {
    type: time
    timeframes: [date, week, month, year, raw]
    convert_tz: no
    sql: ${TABLE}.APPLICATION_DATE ;;
  }

  dimension_group: product_start_date {
    type: time
    timeframes: [date, week, month, year, raw]
    convert_tz: no
    sql: ${TABLE}.PRODUCT_START_DATE ;;
  }

  dimension_group: term_end_date {
    type: time
    timeframes: [date, week, month, year, raw]
    convert_tz: no
    sql: ${TABLE}.TERM_END_DATE ;;
  }

  dimension: member_flag {
    type: string
    sql: ${TABLE}.MEMBER_FLAG ;;
  }

  dimension_group: cont_dt {
    type: time
    timeframes: [date, week, month, year, raw]
    convert_tz: no
    sql: ${TABLE}.CONT_DT ;;
  }

  dimension: balance {
    type: string
    sql: ${TABLE}.BALANCE ;;
  }

  dimension: pit_balance {
    type: string
    sql: ${TABLE}.PIT_BALANCE ;;
  }

  dimension: cumulative_spend {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND ;;
  }

  set: detail {
    fields: [
      account_number,
      prod_code,
      enquiry_source_channel,
      member_flag,
      balance,
      pit_balance,
      cumulative_spend
    ]
  }
}
