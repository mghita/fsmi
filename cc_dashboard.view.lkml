view: cc_dashboard {
  sql_table_name: BOIFS.LK_CC_APPLICATION ;;

  dimension_group: app_approved {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.APP_APPROVED_DATE ;;
  }

  dimension_group: app_rejected {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.APP_REJECTED_DATE ;;
  }

  dimension_group: application {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.APPLICATION_DATE ;;
  }

  dimension: application_number {
    type: string
    sql: ${TABLE}.APPLICATION_NUMBER ;;
  }

  dimension: balance_transfer_flag {
    type: string
    sql: ${TABLE}.BALANCE_TRANSFER_FLAG ;;
  }

  dimension: balance_transfer_value {
    type: string
    sql: ${TABLE}.BALANCE_TRANSFER_VALUE ;;
  }

  dimension: card_protection_flag {
    type: string
    sql: ${TABLE}.CARD_PROTECTION_FLAG ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.CHANNEL ;;
  }

  dimension: colleague_flag {
    type: string
    sql: ${TABLE}.COLLEAGUE_FLAG ;;
  }

  dimension: customer_ref {
    type: string
    sql: ${TABLE}.CUSTOMER_REF ;;
  }

  dimension: employee_decline_override {
    type: string
    sql: ${TABLE}.EMPLOYEE_DECLINE_OVERRIDE ;;
  }

  dimension_group: extract {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.EXTRACT_DATE ;;
  }

  dimension: form_type {
    type: string
    sql: ${TABLE}.FORM_TYPE ;;
  }

  dimension: hau {
    type: string
    sql: ${TABLE}.HAU ;;
  }

  dimension: product_sub_type_code {
    type: string
    sql: ${TABLE}.PRODUCT_SUB_TYPE_CODE ;;
  }

  dimension: product_type_code {
    type: string
    sql: ${TABLE}.PRODUCT_TYPE_CODE ;;
  }

  dimension: response_code {
    type: string
    sql: ${TABLE}.RESPONSE_CODE ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension_group: status_amended {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.STATUS_AMENDED_DATE ;;
  }

  dimension: card_applied_for {
    type: string
    sql:
    case when product_sub_type_code  in ('M1 AM1', 'M1 AM2')  then 'Dual'
      when product_sub_type_code  in ('M1 AL1', 'M1 AL2', 'M1 AL3') then 'Low Rate'
      when product_sub_type_code  in ('M1 AB1', 'M1 AB2', 'M1 AB3') then 'Balance Transfer'
      when product_sub_type_code  in ('M1 AR1', 'M1 AR2') then 'FuelSave'
      else 'Unknown'
    end;;
  }

  dimension: full_hau {
    type: string
    sql:
    case when channel = 'Internet' and ${TABLE}.hau is null then 'SEO'
      when channel = 'Contact Centre' and  ${TABLE}.hau is null then 'Contact Centre'
      when hau_type is null then 'Review HAU'
      else ${look_cc_ITO_codes.full_hau}
    end;;
  }

  dimension: hau_type {
    type: string
    sql:
    case when channel = 'Internet' and ${TABLE}.hau is null then 'SEO & Direct'
      when channel = 'Contact Centre' and  ${TABLE}.hau is null then 'Contact Centre'
      when hau_type is null then 'Review HAU'
      else ${look_cc_ITO_codes.hau_type}
    end;;
  }

  dimension: hau_site {
    type: string
    sql:
    case when channel = 'Internet' and ${TABLE}.hau is null then 'Natural Search'
      when channel = 'Contact Centre' and  ${TABLE}.hau is null then 'Contact Centre'
      when hau_type is null then 'Review HAU'
      else ${look_cc_ITO_codes.hau_site}
    end;;
  }

  dimension: hau_desc {
    type: string
    sql:
    case when channel = 'Internet' and ${TABLE}.hau is null then 'Natural Search'
      when channel = 'Contact Centre' and  ${TABLE}.hau is null then 'Contact Centre'
      when hau_type is null then 'Review HAU'
      else ${look_cc_ITO_codes.hau_desc}
    end;;
  }

  measure: counts {
    type: count
    drill_fields: []
  }

  measure: count_accepted_apps {
    type: count
    drill_fields: [full_hau, hau_type, hau_site, hau_site, count_accepted_apps]
    filters: {field:app_approved_date value: "-NULL"}
  }

  measure: count_taken_up_apps {
    type: count
    drill_fields: [full_hau, hau_type, hau_site, hau_site, count_accepted_apps]
    filters: {field:status value: "SENT TO TSYS"}
  }

  measure: pct_accepted_of_all_apps {
    type: number
    value_format: "0.0\%"
    drill_fields: [full_hau, hau_type, hau_site, hau_site, count_accepted_apps]
    sql: 100*${count_accepted_apps}/NULLIF(${counts},0);;
  }

  measure: pct_takenup_of_all_apps {
    type: number
    value_format: "0.0\%"
    drill_fields: [full_hau, hau_type, hau_site, hau_site, count_accepted_apps]
    sql: 100.0*${count_taken_up_apps}/NULLIF(${counts},0);;
  }

  measure: pct_takenup_of_accepted_apps {
    type: number
    value_format: "0.0\%"
    drill_fields: [full_hau, hau_type, hau_site, hau_site, count_accepted_apps]
    sql: 100.0*${count_taken_up_apps}/NULLIF(${count_accepted_apps},0);;
  }

}
