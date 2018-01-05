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

  measure: sav_pit_bal_cont_dt_ea_iss_2 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_EA_Iss_2};;
  }

  measure: sav_pit_bal_cont_dt_ea_iss_3 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_EA_Iss_3};;
  }

  measure: sav_pit_bal_cont_dt_ea_iss_4 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_EA_Iss_4};;
  }

  measure: sav_pit_bal_cont_dt_ea_iss_5 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_EA_Iss_5};;
  }

  measure: sav_pit_bal_cont_dt_ea_iss_6 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_EA_Iss_6};;
  }

  measure: sav_pit_bal_cont_dt_ea_iss_7 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_EA_Iss_7};;
  }

  measure: sav_pit_bal_cont_dt_ea_iss_8 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_EA_Iss_8};;
  }

  measure: sav_pit_bal_cont_dt_ea_iss_9 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_EA_Iss_9};;
  }

  measure: sav_pit_bal_cont_dt_ea_iss_10 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_EA_Iss_10};;
  }

  measure: sav_pit_bal_cont_dt_ea_iss_11 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_EA_Iss_11};;
  }

  measure: sav_pit_bal_cont_dt_ea_iss_12 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_EA_Iss_12};;
  }

  measure: sav_pit_bal_cont_dt_ea_iss_13 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_EA_Iss_13};;
  }

  measure: sav_pit_bal_cont_dt_fx_1yr_iss_2 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_1yr_Iss_2};;
  }

  measure: sav_pit_bal_cont_dt_fx_1yr_iss_3 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_1yr_Iss_3};;
  }

  measure: sav_pit_bal_cont_dt_fx_1yr_iss_4 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_1yr_Iss_4};;
  }

  measure: sav_pit_bal_cont_dt_fx_1yr_iss_5 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_1yr_Iss_5};;
  }

  measure: sav_pit_bal_cont_dt_fx_1yr_iss_6 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_1yr_Iss_6};;
  }

  measure: sav_pit_bal_cont_dt_fx_1yr_iss_7 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_1yr_Iss_7};;
  }

  measure: sav_pit_bal_cont_dt_fx_1yr_iss_8 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_1yr_Iss_8};;
  }

  measure: sav_pit_bal_cont_dt_fx_1yr_iss_9 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_1yr_Iss_9};;
  }

  measure: sav_pit_bal_cont_dt_fx_1yr_iss_10 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_1yr_Iss_10};;
  }

  measure: sav_pit_bal_cont_dt_fx_1yr_iss_11 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_1yr_Iss_11};;
  }

  measure: sav_pit_bal_cont_dt_fx_1yr_iss_12 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_1yr_Iss_12};;
  }

  measure: sav_pit_bal_cont_dt_fx_1yr_iss_13 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_1yr_Iss_13};;
  }

  measure: sav_pit_bal_cont_dt_fx_2yr_iss_2 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_2yr_Iss_2};;
  }

  measure: sav_pit_bal_cont_dt_fx_2yr_iss_3 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_2yr_Iss_3};;
  }

  measure: sav_pit_bal_cont_dt_fx_2yr_iss_4 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_2yr_Iss_4};;
  }

  measure: sav_pit_bal_cont_dt_fx_2yr_iss_5 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_2yr_Iss_5};;
  }

  measure: sav_pit_bal_cont_dt_fx_2yr_iss_6 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_2yr_Iss_6};;
  }

  measure: sav_pit_bal_cont_dt_fx_2yr_iss_7 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_2yr_Iss_7};;
  }

  measure: sav_pit_bal_cont_dt_fx_2yr_iss_8 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_2yr_Iss_8};;
  }

  measure: sav_pit_bal_cont_dt_fx_2yr_iss_9 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_2yr_Iss_9};;
  }

  measure: sav_pit_bal_cont_dt_fx_2yr_iss_10 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_2yr_Iss_10};;
  }

  measure: sav_pit_bal_cont_dt_fx_2yr_iss_11 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_2yr_Iss_11};;
  }

  measure: sav_pit_bal_cont_dt_fx_2yr_iss_12 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_2yr_Iss_12};;
  }

  measure: sav_pit_bal_cont_dt_fx_2yr_iss_13 {
    type: max
    drill_fields: [detail*]
    value_format:  "\"£\"#,##0,\" K\""
    sql: ${cumulative_spend_FX_2yr_Iss_13};;
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

  dimension_group: Contribution {
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

  dimension: cumulative_spend_EA_Iss_2 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_EA_ISS_2 ;;
  }

  dimension: cumulative_spend_EA_Iss_3 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_EA_ISS_3 ;;
  }

  dimension: cumulative_spend_EA_Iss_4 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_EA_ISS_4 ;;
  }

  dimension: cumulative_spend_EA_Iss_5 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_EA_ISS_5 ;;
  }

  dimension: cumulative_spend_EA_Iss_6 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_EA_ISS_6 ;;
  }

  dimension: cumulative_spend_EA_Iss_7 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_EA_ISS_7 ;;
  }

  dimension: cumulative_spend_EA_Iss_8 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_EA_ISS_8 ;;
  }

  dimension: cumulative_spend_EA_Iss_9 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_EA_ISS_9 ;;
  }

  dimension: cumulative_spend_EA_Iss_10 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_EA_ISS_10 ;;
  }

  dimension: cumulative_spend_EA_Iss_11 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_EA_ISS_11 ;;
  }

  dimension: cumulative_spend_EA_Iss_12 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_EA_ISS_12 ;;
  }

  dimension: cumulative_spend_EA_Iss_13 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_EA_ISS_13 ;;
  }

  dimension: cumulative_spend_FX_1yr_Iss_2 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_1YR_ISS_2 ;;
  }

  dimension: cumulative_spend_FX_1yr_Iss_3 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_1YR_ISS_3 ;;
  }

  dimension: cumulative_spend_FX_1yr_Iss_4 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_1YR_ISS_4 ;;
  }

  dimension: cumulative_spend_FX_1yr_Iss_5 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_1YR_ISS_5 ;;
  }

  dimension: cumulative_spend_FX_1yr_Iss_6 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_1YR_ISS_6 ;;
  }

  dimension: cumulative_spend_FX_1yr_Iss_7 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_1YR_ISS_7 ;;
  }

  dimension: cumulative_spend_FX_1yr_Iss_8 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_1YR_ISS_8 ;;
  }

  dimension: cumulative_spend_FX_1yr_Iss_9 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_1YR_ISS_9 ;;
  }

  dimension: cumulative_spend_FX_1yr_Iss_10 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_1YR_ISS_10 ;;
  }

  dimension: cumulative_spend_FX_1yr_Iss_11 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_1YR_ISS_11 ;;
  }

  dimension: cumulative_spend_FX_1yr_Iss_12 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_1YR_ISS_12 ;;
  }

  dimension: cumulative_spend_FX_1yr_Iss_13 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_1YR_ISS_13 ;;
  }

  dimension: cumulative_spend_FX_2yr_Iss_2 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_2YR_ISS_2 ;;
  }

  dimension: cumulative_spend_FX_2yr_Iss_3 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_2YR_ISS_3 ;;
  }

  dimension: cumulative_spend_FX_2yr_Iss_4 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_2YR_ISS_4 ;;
  }

  dimension: cumulative_spend_FX_2yr_Iss_5 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_2YR_ISS_5 ;;
  }

  dimension: cumulative_spend_FX_2yr_Iss_6 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_2YR_ISS_6 ;;
  }

  dimension: cumulative_spend_FX_2yr_Iss_7 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_2YR_ISS_7 ;;
  }

  dimension: cumulative_spend_FX_2yr_Iss_8 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_2YR_ISS_8 ;;
  }

  dimension: cumulative_spend_FX_2yr_Iss_9 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_2YR_ISS_9 ;;
  }

  dimension: cumulative_spend_FX_2yr_Iss_10 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_2YR_ISS_10 ;;
  }

  dimension: cumulative_spend_FX_2yr_Iss_11 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_2YR_ISS_11 ;;
  }

  dimension: cumulative_spend_FX_2yr_Iss_12 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_2YR_ISS_12 ;;
  }

  dimension: cumulative_spend_FX_2yr_Iss_13 {
    type: string
    sql: ${TABLE}.CUMULATIVE_SPEND_FX_2YR_ISS_13 ;;
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
      cumulative_spend_hold,
      cumulative_spend_EA_Iss_2,
      cumulative_spend_EA_Iss_3,
      cumulative_spend_EA_Iss_4,
      cumulative_spend_EA_Iss_5,
      cumulative_spend_EA_Iss_6,
      cumulative_spend_EA_Iss_7,
      cumulative_spend_EA_Iss_8,
      cumulative_spend_EA_Iss_9,
      cumulative_spend_EA_Iss_10,
      cumulative_spend_EA_Iss_11,
      cumulative_spend_EA_Iss_12,
      cumulative_spend_EA_Iss_13,
      cumulative_spend_FX_1yr_Iss_2,
      cumulative_spend_FX_1yr_Iss_3,
      cumulative_spend_FX_1yr_Iss_4,
      cumulative_spend_FX_1yr_Iss_5,
      cumulative_spend_FX_1yr_Iss_6,
      cumulative_spend_FX_1yr_Iss_7,
      cumulative_spend_FX_1yr_Iss_8,
      cumulative_spend_FX_1yr_Iss_9,
      cumulative_spend_FX_1yr_Iss_10,
      cumulative_spend_FX_1yr_Iss_11,
      cumulative_spend_FX_1yr_Iss_12,
      cumulative_spend_FX_1yr_Iss_13,
      cumulative_spend_FX_2yr_Iss_2,
      cumulative_spend_FX_2yr_Iss_3,
      cumulative_spend_FX_2yr_Iss_4,
      cumulative_spend_FX_2yr_Iss_5,
      cumulative_spend_FX_2yr_Iss_6,
      cumulative_spend_FX_2yr_Iss_7,
      cumulative_spend_FX_2yr_Iss_8,
      cumulative_spend_FX_2yr_Iss_9,
      cumulative_spend_FX_2yr_Iss_10,
      cumulative_spend_FX_2yr_Iss_11,
      cumulative_spend_FX_2yr_Iss_12,
      cumulative_spend_FX_2yr_Iss_13

    ]
  }
}
