connection: "pchaa03"
week_start_day: monday
# week_start_day: saturday


# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: looker_cc_application {}

# explore: looker_ITOs_source_codes {}

# explore: ro_calendar {}

# explore: looker_loan_application {}

# explore: looker_fs_monthly_forecasts {}

explore: looker_loan_repayment_history {}

explore: looker_loan_matchback_data {}

explore: looker_loan_mlp_data {}

explore: loans_dashboard{
  join: looker_ITOs_source_codes
  {
    type: full_outer
    relationship: many_to_one
    sql_on: upper(${loans_dashboard.source_code}) = upper(${looker_ITOs_source_codes.code})
               and ${loans_dashboard.application_date} between ${looker_ITOs_source_codes.start_date} and ${looker_ITOs_source_codes.end_date};;
  }
  join: looker_fs_monthly_forecasts
  {
    type: full_outer
    relationship: many_to_one
    sql_on:  ${loans_dashboard.final_decision_date} = ${looker_fs_monthly_forecasts.forecast_date}
        and ${looker_fs_monthly_forecasts.prod_category}='Loan'
    ;;
  }
  join: looker_dandelion_codes
  {
    type: full_outer
    relationship: many_to_one
    sql_on: upper(${loans_dashboard.source_code}) = upper(${looker_dandelion_codes.source_code})
      and ${loans_dashboard.application_date} >= ${looker_dandelion_codes.start_date};;
  }
}

explore: cc_dashboard {
  join: looker_ITOs_source_codes
  {
    type: full_outer
    relationship: many_to_one
    sql_on: upper(${cc_dashboard.hau}) = upper(${looker_ITOs_source_codes.code})
           and ${cc_dashboard.application_date} between ${looker_ITOs_source_codes.start_date} and ${looker_ITOs_source_codes.end_date}
    ;;
  }
  join: looker_fs_monthly_forecasts
  {
    type: full_outer
    relationship: many_to_one
    sql_on:  ${cc_dashboard.status_amended_date} = ${looker_fs_monthly_forecasts.forecast_date}
        and ${cc_dashboard.card_applied_for} =  ${looker_fs_monthly_forecasts.prod_subcategory}
        and ${looker_fs_monthly_forecasts.prod_category}='Credit Card'
    ;;
  }
}

# explore: looker_loan_dashboard_data{
#   join: looker_fs_monthly_forecasts
#   {
#     type: full_outer
#     relationship: many_to_one
#     sql_on:  ${looker_loan_dashboard_data.drawdown_date} = ${looker_fs_monthly_forecasts.forecast_date}
#         and ${looker_fs_monthly_forecasts.prod_category}='Loan'
#     ;;
#   }
# }

explore: looker_mortgage_data {}
explore: looker_sav_non_isa_dashboard {}
explore: looker_sav_isa_dashboard {}
explore: gdpr {}
explore: looker_profile {}
explore: sav_nisa_matchback {}
explore: sav_isa_matchback {}
explore: finance_mth_end {}
explore: sav_new_non_isa_dashboard {}
explore: gdpr_dm_test {}
