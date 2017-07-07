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
    sql:loan_amount_applied
      style:interval;;}

  dimension: loan_term_application
  {type: number
  sql: ${TABLE}.loan_term_application;;}

  dimension: loan_term_application_band
  {type:tier
    tiers: [12,18,24,30,36,42,48,54,60,66,72,78,84]
    sql:loan_term_application
      style:interval;;}

  dimension: loan_amount_agreed
  {sql: ${TABLE}.loan_amount_agreed;;}

  dimension: loan_amount_agreed_band
  {type:tier
    tiers: [1000,3000,5000,7500,15000,20000,25000]
    sql:loan_amount_agreed
      style:interval;;}

  dimension: loan_term_agreed
  {sql: ${TABLE}.loan_term_agreed;;}

  dimension: loan_term_agreed_band
  {type:tier
    tiers: [12,18,24,30,36,42,48,54,60,66,72,78,84]
    sql:loan_term_agreed
      style:interval;;}

  dimension: loan_APR
  {sql: ${TABLE}.loan_APR;;}

  dimension: loan_APR_band
  {type:tier
    tiers: [5,10,15,20,25,30]
    sql:loan_APR
      style:interval;;}

  dimension_group: application {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.APPLICATION_DATE ;;
  }

  dimension: application_decision
  {sql: ${TABLE}.application_decision;;}

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
    drill_fields: []
  }

  measure: avg_APR
  {type: number
    sql: sum(${TABLE}.weighted_APR_final)/sum(${TABLE}.loan_amount_agreed);;}

  measure: avg_term
  {type: number
    sql: sum(${TABLE}.weighted_loan_term_final)/sum(${TABLE}.loan_amount_agreed);;}

}