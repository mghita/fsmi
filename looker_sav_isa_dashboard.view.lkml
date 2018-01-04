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

  measure: sav_pit_bal_cont_dt_isa {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_isa};;
  }

  measure: sav_pit_bal_cont_dt_fixed {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_fixed};;
  }

  measure: sav_pit_bal_cont_dt_var {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_var};;
  }

  measure: sav_pit_bal_cont_dt_hold {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_hold};;
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

  dimension_group: extractdate {
    type: time
    timeframes: [date, week, month, year, raw]
    convert_tz: no
    sql: ${TABLE}.EXTRACTDATE ;;
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

  dimension_group: CALENDAR_DATE {
    type: time
    timeframes: [date, week, month, year, raw]
    convert_tz: no
    sql: ${TABLE}.CALENDAR_DATE ;;
  }

  dimension: transfer_provider_name {
    type: string
    sql: ${TABLE}.TRANSFER_PROVIDER_NAME ;;
  }

  dimension: product_flag {
    type: string
    sql: ${TABLE}.PRODUCT_FLAG ;;
  }

  dimension: fixed_months {
    type: string
    sql: ${TABLE}.FIXED_MONTHS ;;
  }

  dimension: rate {
    type: number
    value_format: "0.00\%"
    sql: 100.0*${TABLE}.RATE ;;
  }

  dimension: bonus {
    type: number
    value_format: "0.00\%"
    sql: 100.0*${TABLE}.BONUS ;;
  }

  dimension: balance {
    type: string
    sql: ${TABLE}.BALANCE ;;
  }

  dimension: pit_balance {
    type: string
    sql: ${TABLE}.PIT_BALANCE ;;
  }

  dimension: cumulative_spend_isa {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_ISA ;;
  }

  dimension: cumulative_spend_var {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_VAR ;;
  }

  dimension: cumulative_spend_fixed {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FIXED ;;
  }

  dimension: cumulative_spend_hold {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_HOLD ;;
  }

  set: detail {
    fields: [
      account_number,
      prod_code,
      enquiry_source_channel,
      member_flag,
      balance,
      transfer_provider_name,
      product_flag,
      fixed_months,
      rate,
      bonus,
      pit_balance,
      cumulative_spend_isa,
      cumulative_spend_var,
      cumulative_spend_fixed,
      cumulative_spend_hold
    ]
  }
}
