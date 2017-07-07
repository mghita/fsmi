connection: "pchaa03"
week_start_day: sunday

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: lk_cc_application {}

explore: loans_app_mth_v {}

explore: loans_flat_file {}

explore: look_loan_application {}

explore: look_loan_src_codes {}

explore: look_sav_non_isa_account {}

explore: ro_calendar {}


view:  app_source
{
  dimension: source_code
  {sql: ${TABLE}.source_code;;}

  dimension: loan_purpose
  {sql: ${TABLE}.loan_purpose;;}

  dimension: product_name
  {sql: ${TABLE}.product_name;;}

  dimension: loan_amount_applied
  {sql: ${TABLE}.loan_amount_applied;;}

  dimension: loan_amount_applied_band
  {type:tier
    tiers: [1000,3000,5000,7500,15000,20000,25000]
    sql:loan_amount_applied
      style:interval;;}

  dimension: loan_term_application
  {sql: ${TABLE}.loan_term_application;;}

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

  dimension: application_date
  {sql: ${TABLE}.application_date;;}

  dimension: application_month
  {sql: ${TABLE}.application_month;;}

  dimension: application_week
  {sql: ${TABLE}.application_week;;}

  dimension: application_decision
  {sql: ${TABLE}.application_decision;;}

  dimension: final_decision
  {sql: ${TABLE}.final_decision;;}

  dimension: src_group
  {type: string
    sql: coalesce(${TABLE}.source_group, SEO&Direct);;}

  dimension: channel_src
  {type: string
    sql: coalesce(${TABLE}.channel_source, SEO&Direct);;}

  measure: count
  {sql: ${TABLE}.count;;}

  measure: avg_APR
  {type: number
    sql: sum(${TABLE}.weighted_APR_final)/sum(${TABLE}.loan_amount_agreed);;}

  measure: avg_term
  {type: number
    sql: sum(${TABLE}.weighted_loan_term_final)/sum(${TABLE}.loan_amount_agreed);;}

}


explore: app_source
{
  from: look_loan_application
  join: look_loan_src_codes
  {
    type: left_outer
    relationship: many_to_one
    sql_on: ${app_source.source_code} = ${look_loan_src_codes.source_code};;
  }
}
