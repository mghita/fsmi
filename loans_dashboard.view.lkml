view:  loans_dashboard
{
  sql_table_name: BOIFS.LOOKER_LOAN_APPLICATION ;;
  dimension: account_number {
    type: string
    sql: ${TABLE}.ACCOUNT_NUMBER ;;
  }

  dimension: compound_primary_key {
    primary_key: yes
    type: string
    hidden: yes
    sql: ${TABLE}.APPLICATION_DATE||${TABLE}.ACCOUNT_NUMBER ;;
  }

  dimension: source_code
  {type: string
    sql:${TABLE}.source_code;;}

  dimension: loan_purpose
  {type: string
    sql: ${TABLE}.loanpurpose;;}

  dimension: product_name
  {type: string
    sql:${TABLE}.product_name;;}

  dimension: loan_amount_applied
  {type: number
    sql: ${TABLE}.loan_amount_applied;;}

  dimension: loan_amount_applied_band
  {type:tier
    tiers: [1000,3000,5000,7500,15000,20000,25000]
    style:relational
    sql:loan_amount_applied;;
  }

  dimension: loan_term_application
  {type: number
    sql: ${TABLE}.loan_term_application;;}

  dimension: loan_term_application_band
  {type:tier
    tiers: [12,18,24,30,36,42,48,54,60,66,72,78,84]
    style:interval
    sql:loan_term_application;;
  }

  dimension: loan_amount_agreed
  {sql: ${TABLE}.loan_amount_agreed;;}

  dimension: loan_amount_agreed_band
  {type:tier
    tiers: [1000,3000,5000,7500,15000,20000,25000]
    style:interval
    sql:loan_amount_agreed;;
  }

  dimension: loan_term_agreed
  {sql: ${TABLE}.loan_term_agreed;;}

  dimension: loan_term_agreed_band
  {type:tier
    tiers: [12,18,24,30,36,42,48,54,60,66,72,78,84]
    style:interval
    sql:loan_term_agreed;;
  }

  dimension: loan_APR
  {sql: ${TABLE}.loan_APR;;}

  dimension: loan_APR_band
  {type:tier
    tiers: [5,10,15,20,25]
    style:integer
    sql:loan_APR;;
  }

  dimension_group: application {
    type: time
    timeframes: [date, week, month, year]
    convert_tz: no
    sql: ${TABLE}.APPLICATION_DATE ;;
  }

  dimension_group: application_decision {
    type: time
    timeframes: [date, week, month, year]
    convert_tz: no
    sql: ${TABLE}.APPLICATION_DECISION_DATE ;;
  }

  dimension_group: initial_decision {
    type: time
    timeframes: [date, week, month, year]
    convert_tz: no
    sql: ${TABLE}.INIT_APPLICATION_DECISION_DT;;
  }

  dimension_group: final_decision {
    type: time
    timeframes: [date, week, month, year]
    convert_tz: no
    sql: ${TABLE}.FINAL_DECISION_DATE ;;
  }

  dimension: application_decision
  {sql: ${TABLE}.APPLICATION_DECISION;;}


  dimension: application_decision_pivot  {
    sql:
    case
    when ${application_decision} = 'Auto Accept' then '1. Auto Accept'
    when ${application_decision} = 'Refer Accept' then '2. Refer Accept'
    when ${application_decision} = 'Refer' then '3. Refer'
    when ${application_decision} = 'Refer Decline' then '4. Refer Decline'
    when ${application_decision} = 'Auto Decline' then '5. Auto Decline'
    when ${application_decision} = 'Exception' then '6. Exception'
    when ${application_decision} like '%Application Error%' then  '7. Application Error'
    else '8. Not Available'

    end ;;
  }

  dimension: initial_decision
  {sql: ${TABLE}.INITIAL_APPLICATION_DECISION;;}

  dimension: final_decision
  {sql: ${TABLE}.FINAL_DECISION;;}

  dimension: channel_src
  {type: string
    sql:
    case when channel in ('Internet','Contact Centre')  and ${TABLE}.source_code is null then 'SEO & Direct'
      when source like 'RP-%' then 'RunPath'
      when medium is null then 'Unknown'
      else ${looker_ITOs_source_codes.source}
    end;;
    full_suggestions: yes
  }

  dimension: channel_src_explicit {
    type: string
    sql:
    case when channel in ('Internet','Contact Centre')  and ${TABLE}.source_code is null then 'Natural Search'
      when medium is null then 'Unknown'
      else ${looker_ITOs_source_codes.source}
    end;;
    full_suggestions: yes
  }

  dimension: src_group
  {type: string
    sql: coalesce(${looker_ITOs_source_codes.medium}, 'SEO & Direct');;
    full_suggestions: yes
  }

  dimension: project_filter
  {type: string
    sql:
    case
    when ${source_code} in ('aftc01', 'aftm01', 'agus01', 'afnm01', 'afrp01', 'afgh01',
          'afky01', 'agmn02', 'afmn01', 'afnd01', 'afqd01', 'diat01', 'aflu01') then 'Project Dandelion'
    end ;;
    full_suggestions: yes
  }

  measure: counts {
    type: count_distinct
    drill_fields: [src_group, channel_src, counts]
    sql: ${TABLE}.ACCOUNT_NUMBER ;;
    sql_distinct_key: ${compound_primary_key};;
  }

  measure: counts_ytd {
    type: count
    drill_fields: [src_group, channel_src, counts]
    filters: {field:application_date value: "this year"}
    filters: {field:application_week value: "before 0 days ago"}
  }

  measure: count_accepted_apps {
    type: count
    drill_fields: [src_group, channel_src, count_accepted_apps]
    filters: {field:application_decision value: "%Accept%"}
  }

  measure: count_accepted_apps_ytd {
    type: count
    drill_fields: [src_group, channel_src, count_accepted_apps]
    filters: {field:application_decision value: "%Accept%"}
    filters: {field:application_decision_date value: "this year"}
    filters: {field:application_decision_week value: "before 0 days ago"}
  }

  measure: count_taken_up_apps {
    type: count_distinct
    drill_fields: [src_group, channel_src, count_taken_up_apps]
    filters: {field:final_decision value: "Taken Up"}
    sql: ${TABLE}.ACCOUNT_NUMBER ;;
    sql_distinct_key: ${compound_primary_key};;
  }

  measure: count_taken_up_apps_ytd {
    type: count_distinct
    drill_fields: [src_group, channel_src, count_taken_up_apps]
    filters: {field:final_decision value: "Taken Up"}
    filters: {field:final_decision_date value: "this year"}
    filters: {field:final_decision_week value: "before 0 days ago"}
    sql: ${TABLE}.ACCOUNT_NUMBER ;;
    sql_distinct_key: ${compound_primary_key};;
  }

  measure: forecast_count {
    value_format: "#,##0"
    sql: ${looker_fs_monthly_forecasts.forecast_count};;
  }

  measure: pct_accepted_of_all_apps {
    type: number
    value_format: "0.0\%"
    drill_fields: [src_group, channel_src, pct_accepted_of_all_apps]
    sql: 100*${count_accepted_apps}/NULLIF(${counts},0);;
  }

  measure: pct_takenup_of_all_apps {
    type: number
    value_format: "0.0\%"
    drill_fields: [src_group, channel_src, pct_takenup_of_all_apps]
    sql: 100.0*${count_taken_up_apps}/NULLIF(${counts},0);;
  }

  measure: pct_takenup_of_accepted_apps {
    type: number
    value_format: "0.0\%"
    drill_fields: [src_group, channel_src, pct_takenup_of_accepted_apps]
    sql: 100.0*${count_taken_up_apps}/NULLIF(${count_accepted_apps},0);;
  }

  measure: avg_amount {
    type: average
    value_format: "\"£\"#,##0.0,\" K\""
    drill_fields: [src_group, channel_src, avg_amount]
    sql: ${loan_amount_agreed};;
  }

  measure: avg_amount_applied {
    type: average
    value_format: "\"£\"#,##0.0,\" K\""
    drill_fields: [src_group, channel_src, avg_amount]
    sql: ${loan_amount_applied};;
  }


  measure: total_amount {
    type: sum
    value_format:  "\"£\"#,##0,\" K\""
    drill_fields: [src_group, channel_src, total_amount]
    sql: ${loan_amount_agreed};;
  }

    measure: total_amount_applied {
    type: sum
    value_format:  "\"£\"#,##0,\" K\""
    drill_fields: [src_group, channel_src, total_amount]
    sql: ${loan_amount_applied};;
  }

  measure: total_amount_YTD {
    type: sum
    value_format:  "\"£\"#,##0,\" K\""
    drill_fields: [src_group, channel_src, total_amount_YTD]
    sql: ${loan_amount_agreed};;
    filters: {field:final_decision_date value: "this year"}
    filters: {field:final_decision_week value: "before 0 days ago"}
  }

  measure: avg_amount_YTD {
    type: average
    value_format: "\"£\"#,##0.0,\" K\""
    drill_fields: [src_group, channel_src, avg_amount_YTD]
    sql: ${loan_amount_agreed};;
    filters: {field:final_decision_date value: "this year"}
    filters: {field:final_decision_week value: "before 0 days ago"}
  }

  measure: weighted_avg_APR
  {type: number
    value_format: "0.0"
    sql: sum(${TABLE}.weighted_APR_final)/sum(${TABLE}.loan_amount_agreed);;
  }

  measure: weighted_avg_APR_at_application
  {type: number
    value_format: "0.0"
    sql: sum(${TABLE}.weighted_APR_at_application)/sum(${TABLE}.loan_amount_applied);;
  }
  measure: weighted_avg_term
  {type: number
    value_format: "0.0"
    sql: sum(${TABLE}.weighted_loan_term_final)/sum(${TABLE}.loan_amount_agreed);;
  }

}
