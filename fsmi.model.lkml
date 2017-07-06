connection: "pchaa03"

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
  sql_on: ${app_source.source_code} = ${look_loan_src_codes.source_code};;
  }}
