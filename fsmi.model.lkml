connection: "pchaa03"
week_start_day: saturday

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: looker_cc_application {}

explore: loans_app_mth_v {}

explore: loans_flat_file {}

explore: looker_loan_src_codes {}

explore: looker_sav_non_isa_account {}

explore: looker_cc_ITO_codes {}

explore: looker_ITOs_source_codes {}

explore: ro_calendar {}

explore: looker_loan_application {}

explore: looker_fs_monthly_forecasts {}

explore: looker_boifilechecks {}

explore: loans_dashboard{
  join: looker_ITOs_source_codes
  {
    type: left_outer
    relationship: many_to_one
    sql_on: ${loans_dashboard.source_code} = ${looker_ITOs_source_codes.code};;
  }
  join: looker_fs_monthly_forecasts
  {
    type: full_outer
    relationship: many_to_one
    sql_on:  ${loans_dashboard.final_decision_date} = ${looker_fs_monthly_forecasts.forecast_date}
        and ${looker_fs_monthly_forecasts.prod_category}='Loan'
    ;;
  }
}

explore: cc_dashboard {
  join: looker_ITOs_source_codes
  {
    type: left_outer
    relationship: many_to_one
    sql_on: ${cc_dashboard.hau} = ${looker_ITOs_source_codes.code}
          and ${cc_dashboard.application_date} between ${looker_ITOs_source_codes.start_date} and ${looker_ITOs_source_codes.end_date};;
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

explore: looker_loan_dashboard_data{
  join: looker_fs_monthly_forecasts
  {
    type: full_outer
    relationship: many_to_one
    sql_on:  ${looker_loan_dashboard_data.drawdown_date} = ${looker_fs_monthly_forecasts.forecast_date}
        and ${looker_fs_monthly_forecasts.prod_category}='Loan'
    ;;
  }
}
