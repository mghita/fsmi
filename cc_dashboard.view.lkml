view: cc_dashboard {
  sql_table_name: BOIFS.LOOKER_CC_APPLICATION ;;

  dimension_group: app_approved {
    type: time
    timeframes: [date, week, month, year]
    convert_tz: no
    sql: ${TABLE}.APP_APPROVED_DATE ;;
  }

  dimension_group: app_rejected {
    type: time
    timeframes: [date, week, month, year]
    convert_tz: no
    sql: ${TABLE}.APP_REJECTED_DATE ;;
  }

  dimension_group: application {
    type: time
    timeframes: [date, week, month, year]
    convert_tz: no
    sql: ${TABLE}.APPLICATION_DATE ;;
  }

  dimension: application_number {
    type: string
    sql: ${TABLE}.APPLICATION_NUMBER ;;
  }

  dimension: compound_primary_key {
    primary_key: yes
    type: string
    hidden: yes
    sql: ${TABLE}.APPLICATION_DATE||${TABLE}.APPLICATION_NUMBER ;;
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
    timeframes: [date, week, month, year]
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

  dimension: status_class {
    type: string
    sql:
    case when ${status}  ='SENT TO TSYS'  then 'Opened'
      when ${status}  ='APPROVED'  then 'Approved'
      when ${status}   = 'APP DECLINED' then 'Declined'
      when ${status}   in ('SENT FOR CUST RESPONSE', 'SENT FOR BOI ACTION') then 'Referred'
      when ${status}   in ('CANCELLED', 'EXPIRED') then 'Cancelled/Expired'
      else 'Unknown'
    end;;  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension_group: status_amended {
    type: time
    timeframes: [date, week, month, year]
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

  dimension: hau_type {
    type: string
    sql:
    case when channel in ('Internet','Contact Centre')  and ${TABLE}.hau is null then 'SEO & Direct'
      when medium is null then 'Unknown'
      else ${looker_ITOs_source_codes.medium}
    end;;
    full_suggestions: yes
  }

  dimension: hau_site {
    type: string
    sql:
    case when channel in ('Internet','Contact Centre')  and ${TABLE}.hau is null then 'SEO & Direct'
      when source like 'RP-%' then 'RunPath'
      when source like 'RP-%' then 'RunPath'
      when source like 'OP-%' then 'Optimise'
      when medium is null then 'Unknown'
      else ${looker_ITOs_source_codes.source}
    end;;
    full_suggestions: yes
 }

  dimension: hau_site_explicit {
    type: string
    sql:
    case when channel = 'Internet' and ${TABLE}.hau is null then 'Natural Search'
      when channel = 'Contact Centre' and  ${TABLE}.hau is null then 'Contact Centre'
      when medium is null then 'Unknown'
      else ${looker_ITOs_source_codes.source}
    end;;
    full_suggestions: yes
  }

  measure: counts {
    type: count_distinct
    drill_fields: [hau_type, hau_site, hau_site_explicit, counts]
    sql:  ${TABLE}.APPLICATION_NUMBER;;
    sql_distinct_key: ${compound_primary_key};;
  }

  measure: count_accepted_apps {
    type: count_distinct
    drill_fields: [hau_type, hau_site, hau_site_explicit, count_accepted_apps]
    filters: {field:app_approved_date value: "-NULL"}
    sql:  ${TABLE}.APPLICATION_NUMBER;;
    sql_distinct_key: ${compound_primary_key};;
  }

  measure: count_taken_up_apps {
    type: count_distinct
    drill_fields: [hau_type, hau_site, hau_site_explicit, count_taken_up_apps]
    filters: {field:status value: "SENT TO TSYS"}
    sql:  ${TABLE}.APPLICATION_NUMBER;;
    sql_distinct_key: ${compound_primary_key};;
  }

  measure: forecast_count {
    value_format: "#,##0"
    sql: ${looker_fs_monthly_forecasts.forecast_count};;
  }

  measure: pct_accepted_of_all_apps {
    type: number
    value_format: "0.0\%"
    drill_fields: [hau_type, hau_site, hau_site_explicit, count_accepted_apps]
    sql: 100*${count_accepted_apps}/NULLIF(${counts},0);;
  }

  measure: pct_takenup_of_all_apps {
    type: number
    value_format: "0.0\%"
    drill_fields: [hau_type, hau_site, hau_site_explicit, pct_takenup_of_all_apps]
    sql: 100.0*${count_taken_up_apps}/NULLIF(${counts},0);;
  }

  measure: pct_takenup_of_accepted_apps {
    type: number
    value_format: "0.0\%"
    drill_fields: [hau_type, hau_site, hau_site_explicit, pct_takenup_of_accepted_apps]
    sql: 100.0*${count_taken_up_apps}/NULLIF(${count_accepted_apps},0);;
  }

}
