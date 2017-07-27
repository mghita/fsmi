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

explore: ro_calendar {}

explore: look_loan_application {}

explore: looker_fs_monthly_forecasts {}

explore: loans_dashboard{
  join: looker_loan_src_codes
  {
    type: left_outer
    relationship: many_to_one
    sql_on: ${loans_dashboard.source_code} = ${looker_loan_src_codes.source_code};;
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
  join: looker_cc_ITO_codes
  {
    type: left_outer
    relationship: many_to_one
    sql_on: ${cc_dashboard.hau} = ${looker_cc_ITO_codes.hau_new};;
  }

}
