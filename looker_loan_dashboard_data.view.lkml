view: looker_loan_dashboard_data {
  sql_table_name: BOIFS.LOOKER_LOAN_DASHBOARD_DATA ;;


  dimension: applicationkey {
    type: string
    sql: ${TABLE}.APPLICATIONKEY ;;
  }

  dimension_group: application {
    type: time
    timeframes: [date, week, month, year]
    convert_tz: no
    sql: to_date(${TABLE}.APPLICATIONDATEKEY,'YYYYMMDD') ;;
  }

  dimension: compound_primary_key {
    primary_key: yes
    type: string
    hidden: yes
    sql: ${TABLE}.APPLICATIONKEY||${TABLE}.APPLICATIONDATEKEY ;;
  }

  dimension: source_group {
    type: string
    sql: ${TABLE}.SOURCE_GROUP ;;
    full_suggestions: yes
  }

  dimension: source_channel {
    type: string
    sql: case when SOURCE_CHANNEL like 'RP-%' then 'RunPath'
      else  ${TABLE}.SOURCE_CHANNEL end;;
    full_suggestions: yes
  }

  dimension: project_filter
  {type: string
    sql:
    case
    when ${TABLE}.sourcecode in ('aftc01', 'aftm01', 'agus01', 'afnm01', 'afrp01', 'afgh01',
          'afky01', 'agmn02', 'afmn01', 'afnd01', 'afqd01', 'diat01', 'aflu01') then 'Project Dandelion'
    end ;;
    full_suggestions: yes
  }

  dimension_group: boi_decision {
    type: time
    timeframes: [date, week, month, year]
    convert_tz: no
    sql: to_date(${TABLE}.BOIDECISIONDATEKEY,'YYYYMMDD') ;;
  }

  dimension: latest_application_decision {
    type: string
    sql: ${TABLE}.LATESTAPPLICATIONDECISION;;
  }

  dimension: final_application_decision {
    type: string
    sql: ${TABLE}.FINALAPPLICATIONDECISION;;
  }

  dimension: refer_outcomes_status {
    type: string
    sql: ${TABLE}.REFEROUTCOMESSTATUS;;
  }

  dimension_group: drawdown {
    type: time
    timeframes: [date, week, month, year]
    convert_tz: no
    sql: to_date(${TABLE}.DRAWDOWN_DATE,'YYYYMMDD') ;;
  }

  dimension: customer_decision {
    type: string
    sql: ${TABLE}.CUSTOMER_DECISION ;;
  }

  dimension: loantermapplication {
    type: string
    sql: ${TABLE}.LOANTERMAPPLICATION ;;
  }

  dimension: loanamountapplied {
    type: string
    sql: ${TABLE}.LOANAMOUNTAPPLIED ;;
  }

  dimension: loantermfinal {
    type: string
    sql: ${TABLE}.LOANTERMFINAL ;;
  }

  dimension: loanamountfinal {
    type: string
    sql: ${TABLE}.LOANAMOUNTFINAL ;;
  }

  dimension: loantermwritten {
    type: string
    sql: ${TABLE}.LOANTERMWRITTEN ;;
  }

  dimension: loanamountwritten {
    type: string
    sql: ${TABLE}.LOANAMOUNTWRITTEN ;;
  }

  dimension: interestfinal {
    type: string
    sql: ${TABLE}.INTERESTFINAL ;;
  }

  dimension: apr {
    type: string
    sql: ${TABLE}.APR ;;
  }

  dimension: weightedaprapplied {
    type: string
    sql: ${TABLE}.WEIGHTEDAPRAPPLIED ;;
  }

  dimension: weightedloantermapplied {
    type: string
    sql: ${TABLE}.WEIGHTEDLOANTERMAPPLIED ;;
  }

  dimension: weightedaprfinal {
    type: string
    sql: ${TABLE}.WEIGHTEDAPRFINAL ;;
  }

  dimension: weightedloantermfinal {
    type: string
    sql: ${TABLE}.WEIGHTEDLOANTERMFINAL ;;
  }

  dimension: delphiscore {
    type: string
    sql: ${TABLE}.DELPHISCORE ;;
  }

  measure: count {
    type: count_distinct
    drill_fields: [source_group, source_channel, count]
    sql: ${TABLE}.APPLICATIONKEY;;
    sql_distinct_key: ${compound_primary_key};;
  }

  measure: count_accepted_apps {
    type: count_distinct
    drill_fields: [source_group, source_channel, count_taken_up_apps]
    filters: {field:final_application_decision value: "%Accept%"}
    sql: ${TABLE}.APPLICATIONKEY;;
    sql_distinct_key: ${compound_primary_key};;
    }

  measure: count_taken_up_apps {
    type: count_distinct
    drill_fields: [source_group, source_channel, count_taken_up_apps]
    filters: {field:customer_decision value: "Taken Up"}
    sql: ${TABLE}.APPLICATIONKEY;;
    sql_distinct_key: ${compound_primary_key};;
  }

  measure: forecast_count {
    sql: ${looker_fs_monthly_forecasts.forecast_count};;
  }

  measure: pct_accepted_of_all_apps {
    type: number
    value_format: "0.0\%"
    drill_fields: [source_group, source_channel, pct_accepted_of_all_apps]
    sql: 100*${count_accepted_apps}/NULLIF(${count},0);;
  }

  measure: pct_takenup_of_all_apps {
    type: number
    value_format: "0.0\%"
    drill_fields: [source_group, source_channel, pct_takenup_of_all_apps]
    sql: 100.0*${count_taken_up_apps}/NULLIF(${count},0);;
  }

  measure: pct_takenup_of_accepted_apps {
    type: number
    value_format: "0.0\%"
    drill_fields: [source_group, source_channel, pct_takenup_of_accepted_apps]
    sql: 100.0*${count_taken_up_apps}/NULLIF(${count_accepted_apps},0);;
  }

  measure: avg_amount {
    type: average
    value_format: "\"£\"#,##0.0,\" K\""
    drill_fields: [source_group, source_channel, avg_amount]
    sql: ${TABLE}.LOANAMOUNTWRITTEN;;
  }

  measure: total_amount {
    type: sum
    value_format:  "\"£\"#,##0,\" K\""
    drill_fields: [source_group, source_channel, total_amount]
    sql: ${TABLE}.LOANAMOUNTWRITTEN;;
  }

  measure: weighted_avg_APR
  {type: number
    value_format: "0.0"
    sql: sum(${TABLE}.WEIGHTEDAPRFINAL)/sum(${TABLE}.LOANAMOUNTWRITTEN);;
  }

  measure: weighted_avg_term
  {type: number
    value_format: "0.0"
    sql: sum(${TABLE}.WEIGHTEDAPRFINAL)/sum(${TABLE}.LOANAMOUNTWRITTEN);;
  }


}
