view: sav_new_non_isa_dashboard {
  sql_table_name: BOIFS.looker_sav_nisa_dashboard_data ;;

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

    measure: sav_pit_bal_acc_dt {
      type: max
      drill_fields: [detail*]
      value_format:  "\"£\"#,##0,\" K\""
      sql: ${cumulative_spend};;
    }

    measure: sav_cumulative_spend_easy_iss_1 {
      type: max
      drill_fields: [detail*]
      value_format:  "\"£\"#,##0,\" K\""
      sql: ${cumulative_spend_easy_iss_1};;
    }

    measure: sav_cumulative_spend_easy_iss_2 {
      type: max
      drill_fields: [detail*]
      value_format:  "\"£\"#,##0,\" K\""
      sql: ${cumulative_spend_easy_iss_2};;
    }

    measure: sav_cumulative_spend_easy_iss_3 {
      type: max
      drill_fields: [detail*]
      value_format:  "\"£\"#,##0,\" K\""
      sql: ${cumulative_spend_easy_iss_3};;
    }

    measure: sav_cumulative_spend_easy_iss_4 {
      type: max
      drill_fields: [detail*]
      value_format:  "\"£\"#,##0,\" K\""
      sql: ${cumulative_spend_easy_iss_4};;
    }

    measure: sav_cumulative_spend_easy_iss_5 {
      type: max
      drill_fields: [detail*]
      value_format:  "\"£\"#,##0,\" K\""
      sql: ${cumulative_spend_easy_iss_5};;
    }

    measure: sav_cumulative_spend_easy_iss_6 {
      type: max
      drill_fields: [detail*]
      value_format:  "\"£\"#,##0,\" K\""
      sql: ${cumulative_spend_easy_iss_6};;
    }

    measure: sav_cumulative_spend_easy_iss_7 {
      type: max
      drill_fields: [detail*]
      value_format:  "\"£\"#,##0,\" K\""
      sql: ${cumulative_spend_easy_iss_7};;
    }

    measure: sav_cumulative_spend_mem_iss_1 {
      type: max
      drill_fields: [detail*]
      value_format:  "\"£\"#,##0,\" K\""
      sql: ${cumulative_spend_mem_iss_1};;
    }

    measure: sav_cumulative_spend_mem_iss_2 {
      type: max
      drill_fields: [detail*]
      value_format:  "\"£\"#,##0,\" K\""
      sql: ${cumulative_spend_mem_iss_2};;
    }

    measure: sav_cumulative_spend_mem_iss_3 {
      type: max
      drill_fields: [detail*]
      value_format:  "\"£\"#,##0,\" K\""
      sql: ${cumulative_spend_mem_iss_3};;
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

  dimension: sub_product_name {
    type: string
    sql: ${TABLE}.SUB_PRODUCT_NAME ;;
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

  dimension: ito_code {
    type: string
    sql: ${TABLE}.ITO_CODE ;;
  }


    dimension_group: activation {
      type: time
      timeframes: [date, week, month, year, raw]
      convert_tz: no
      sql: ${TABLE}.ACTIVATION_DATE ;;
    }

    dimension_group: calendar {
      type: time
      timeframes: [date, week, month, year, raw]
      convert_tz: no
      sql: ${TABLE}.CALENDAR_DATE ;;
    }


  dimension: balance {
    type: string
    hidden: yes
    sql: ${TABLE}.BALANCE ;;
  }

  dimension: balance_outflow {
    type: string
    hidden: yes
    sql: ${TABLE}.BALANCE_OUTFLOW ;;
  }

  dimension: balance_inflow {
    type: string
    hidden: yes
    sql: ${TABLE}.BALANCE_INFLOW ;;
  }

  dimension: cumulative_spend {
    type: string
    hidden: yes
    sql: ${TABLE}.CUMULATIVE_SPEND ;;
  }

  dimension: cumulative_spend_easy_iss_1 {
    type: string
    hidden: yes
    sql: ${TABLE}.CUMULATIVE_SPEND_EASY_ISS_1 ;;
  }

  dimension: cumulative_spend_easy_iss_2 {
    type: string
    hidden: yes
    sql: ${TABLE}.CUMULATIVE_SPEND_EASY_ISS_2 ;;
  }

  dimension: cumulative_spend_easy_iss_3 {
    type: string
    hidden: yes
    sql: ${TABLE}.CUMULATIVE_SPEND_EASY_ISS_3 ;;
  }

  dimension: cumulative_spend_easy_iss_4 {
    type: string
    hidden: yes
    sql: ${TABLE}.CUMULATIVE_SPEND_EASY_ISS_4 ;;
  }

  dimension: cumulative_spend_easy_iss_5 {
    type: string
    hidden: yes
    sql: ${TABLE}.CUMULATIVE_SPEND_EASY_ISS_5 ;;
  }

  dimension: cumulative_spend_easy_iss_6 {
    type: string
    hidden: yes
    sql: ${TABLE}.CUMULATIVE_SPEND_EASY_ISS_6 ;;
  }

  dimension: cumulative_spend_easy_iss_7 {
    type: string
    hidden: yes
    sql: ${TABLE}.CUMULATIVE_SPEND_EASY_ISS_7 ;;
  }

  dimension: cumulative_spend_mem_iss_1 {
    type: string
    hidden: yes
    sql: ${TABLE}.CUMULATIVE_SPEND_MEM_ISS_1 ;;
  }

  dimension: cumulative_spend_mem_iss_2 {
    type: string
    hidden: yes
    sql: ${TABLE}.CUMULATIVE_SPEND_MEM_ISS_2 ;;
  }

  dimension: cumulative_spend_mem_iss_3 {
    type: string
    hidden: yes
    sql: ${TABLE}.CUMULATIVE_SPEND_MEM_ISS_3 ;;
  }

  dimension: pit_balance {
    type: string
    hidden: yes
    sql: ${TABLE}.PIT_BALANCE ;;
  }

  dimension: pit_balance_outflow {
    type: string
    hidden: yes
    sql: ${TABLE}.PIT_BALANCE_OUTFLOW ;;
  }

  dimension: pit_balance_inflow {
    type: string
    hidden: yes
    sql: ${TABLE}.PIT_BALANCE_INFLOW ;;
  }

  set: detail {
    fields: [
      account_number,
      sav_product,
      sub_product_name,
      medium,
      source,
      account_status,
      balance_group,
      ito_code,
      activation_date,
      calendar_date,
      balance,
      balance_outflow,
      balance_inflow,
      cumulative_spend,
      cumulative_spend_easy_iss_1,
      cumulative_spend_easy_iss_2,
      cumulative_spend_easy_iss_3,
      cumulative_spend_easy_iss_4,
      cumulative_spend_easy_iss_5,
      cumulative_spend_easy_iss_6,
      cumulative_spend_easy_iss_7,
      cumulative_spend_mem_iss_1,
      cumulative_spend_mem_iss_2,
      cumulative_spend_mem_iss_3,
      pit_balance,
      pit_balance_outflow,
      pit_balance_inflow
    ]
  }
}
