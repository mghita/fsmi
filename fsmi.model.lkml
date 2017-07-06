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


explore: app_source {
from: look_loan_application
join: look_loan_src_codes {
  type: left_outer
  relationship: many_to_one
  sql_on: upper(${app_source.source_code}) = upper(${look_loan_src_codes.source_code});;
  }
fields: [app_source.source_code, app_source.application_date, app_source.application_month,  app_source.application_week, app_source.application_decision,
  app_source.count, look_loan_src_codes.source_group, look_loan_src_codes.channel_source]

}
