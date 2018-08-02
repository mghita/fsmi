view: finance_mth_end {
  sql_table_name: boifs.looker_finance_mth_end;;

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: count_loan_customers {
    type: count_distinct
    filters: {field:loan_customer_key value: "-NULL"}
    sql: ${loan_customer_key} ;;
  }

  measure: count_non_isa_customers {
    type: count_distinct
    filters: {field:non_isa_customer_key value: "-NULL"}
    sql: ${non_isa_customer_key} ;;
  }

  measure: count_isa_customers {
    type: count_distinct
    filters: {field:isa_customer_key value: "-NULL"}
    sql: ${isa_customer_key} ;;
  }


  dimension: loan_customer_key {
    type: string
    hidden: yes
    sql: ${TABLE}.LOAN_CUSTOMER_KEY ;;
  }

  dimension: non_isa_customer_key {
    type: string
    hidden: yes
    sql: ${TABLE}.NON_ISA_CUSTOMER_KEY ;;
  }

  dimension: isa_customer_key {
    type: string
    hidden: yes
    sql: ${TABLE}.ISA_CUSTOMER_KEY ;;
  }

  dimension: loan_start_date {
    type: date
    sql: ${TABLE}.LOAN_START_DATE ;;
  }

  dimension: non_isa_start_date {
    type: date
    sql: ${TABLE}.NON_ISA_START_DATE ;;
  }

  dimension: isa_start_date {
    type: date
    sql: ${TABLE}.ISA_START_DATE ;;
  }

  set: detail {
    fields: [
      loan_customer_key,
      non_isa_customer_key,
      isa_customer_key,
      loan_start_date,
      non_isa_start_date,
      isa_start_date
    ]
  }
}
