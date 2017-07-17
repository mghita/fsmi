connection: "pchaa03"
week_start_day: saturday

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: lk_cc_application {}

explore: loans_app_mth_v {}

explore: loans_flat_file {}

explore: look_loan_src_codes {}

explore: look_sav_non_isa_account {}

explore: look_cc_ITO_codes {}

explore: ro_calendar {}

explore: look_loan_application {}

explore: app_source{
  join: look_loan_src_codes
  {
    type: left_outer
    relationship: many_to_one
    sql_on: ${app_source.source_code} = ${look_loan_src_codes.source_code};;
  }
}

explore: cc_dashboard {
  join: look_cc_ITO_codes
  {
    type: left_outer
    relationship: many_to_one
    sql_on: ${cc_dashboard.hau} = ${look_cc_ITO_codes.hau_new};;
  }
}
