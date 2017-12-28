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

  dimension: extract_date {
    type: date
    sql: ${TABLE}.EXTRACT_DATE ;;
  }

  dimension: application_date {
    type: date
    sql: ${TABLE}.APPLICATION_DATE ;;
  }

  dimension: product_start_date {
    type: date
    sql: ${TABLE}.PRODUCT_START_DATE ;;
  }

  dimension: term_end_date {
    type: date
    sql: ${TABLE}.TERM_END_DATE ;;
  }

  dimension: member_flag {
    type: string
    sql: ${TABLE}.MEMBER_FLAG ;;
  }

  dimension: cont_dt {
    type: date
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
      extract_date,
      application_date,
      product_start_date,
      term_end_date,
      member_flag,
      cont_dt,
      balance,
      pit_balance,
      cumulative_spend
    ]
  }
}
