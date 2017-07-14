view:  app_source
{
  sql_table_name: BOIFS.LOOK_LOAN_APPLICATION ;;
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
    style:interval
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
    tiers: [2.5,5,10,12.5,15,20,25,30]
    style:interval
    sql:loan_APR;;
  }

  dimension_group: application {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.APPLICATION_DATE ;;
  }

  dimension_group: application_decision {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.APPLICATION_DECISION_DATE ;;
  }

  dimension_group: final_decision {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.FINAL_DECISION_DATE ;;
  }

  dimension: application_decision
  {sql: ${TABLE}.application_decision;;}


  dimension: application_decision_pivot  {
    sql:
    case
    when ${application_decision} = 'Auto Accept' then '1. Auto Accept'
    when ${application_decision} = 'Refer Accept' then '2. Refer Accept'
    when ${application_decision} = 'Refer' then '3. Refer'
    when ${application_decision} = 'Refer Decline' then '4. Refer Decline'
    when ${application_decision} = 'Auto Decline' then '5. Auto Decline'
    when ${application_decision} = 'Refer' then '6. Refer'
    when ${application_decision} = 'Exception' then '7. Exception'
    when ${application_decision} like '%Application Error%' then  '8. Application Error'
    else 'Not Available'

    end ;;
  }

  dimension: final_decision
  {sql: ${TABLE}.final_decision;;}

  dimension: src_group
  {type: string
    sql: coalesce(${look_loan_src_codes.source_group}, 'SEO&Direct');;}

  dimension: channel_src
  {type: string
    sql: coalesce(${look_loan_src_codes.channel_source}, 'SEO&Direct');;}

  measure: counts {
    type: count
    drill_fields: [src_group, channel_src, counts]
  }

  measure: count_accepted_apps {
    type: count
    drill_fields: [src_group, channel_src, count_accepted_apps]
    filters: {field:application_decision value: "%Accept%"}
  }

  measure: count_taken_up_apps {
    type: count
    drill_fields: [src_group, channel_src, count_taken_up_apps]
    filters: {field:final_decision value: "Taken Up"}
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

  measure: total_amount {
    type: sum
    value_format:  "\"£\"#,##0,\" K\""
    drill_fields: [src_group, channel_src, total_amount]
    sql: ${loan_amount_agreed};;
  }

  measure: weighted_avg_APR
  {type: number
    value_format: "0.0"
    sql: sum(${TABLE}.weighted_APR_final)/sum(${TABLE}.loan_amount_agreed);;
  }

  measure: weighted_avg_term
  {type: number
    value_format: "0.0"
    sql: sum(${TABLE}.weighted_loan_term_final)/sum(${TABLE}.loan_amount_agreed);;
  }

}
