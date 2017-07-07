view: look_loan_application {
  sql_table_name: BOIFS.LOOK_LOAN_APPLICATION ;;

  dimension: aa_member_flag {
    type: string
    sql: ${TABLE}.AA_MEMBER_FLAG ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}.ACCOUNT_NUMBER ;;
  }

  dimension: advertised_loan_apr {
    type: string
    sql: ${TABLE}.ADVERTISED_LOAN_APR ;;
  }

  dimension: age {
    type: string
    sql: ${TABLE}.AGE ;;
  }

  dimension_group: application {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.APPLICATION_DATE ;;
  }

  dimension: application_decision {
    type: string
    sql: ${TABLE}.APPLICATION_DECISION ;;
  }

  dimension_group: application_decision {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.APPLICATION_DECISION_DATE ;;
  }

  dimension: application_id {
    type: string
    sql: ${TABLE}.APPLICATION_ID ;;
  }

  dimension: application_number {
    type: string
    sql: ${TABLE}.APPLICATION_NUMBER ;;
  }

  dimension: campaign_code {
    type: string
    sql: ${TABLE}.CAMPAIGN_CODE ;;
  }

  dimension_group: campaign_end {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.CAMPAIGN_END_DATE ;;
  }

  dimension: campaign_headline_rate {
    type: string
    sql: ${TABLE}.CAMPAIGN_HEADLINE_RATE ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.CAMPAIGN_ID ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CAMPAIGN_NAME ;;
  }

  dimension: campaign_product_code {
    type: string
    sql: ${TABLE}.CAMPAIGN_PRODUCT_CODE ;;
  }

  dimension: campaign_product_name {
    type: string
    sql: ${TABLE}.CAMPAIGN_PRODUCT_NAME ;;
  }

  dimension_group: campaign_start {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.CAMPAIGN_START_DATE ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.CHANNEL ;;
  }

  dimension: client_unique_id {
    type: string
    sql: ${TABLE}.CLIENT_UNIQUE_ID ;;
  }

  dimension: consent_for_email_marketing {
    type: string
    sql: ${TABLE}.CONSENT_FOR_EMAIL_MARKETING ;;
  }

  dimension: consent_for_letter_marketing {
    type: string
    sql: ${TABLE}.CONSENT_FOR_LETTER_MARKETING ;;
  }

  dimension: consent_for_sms_marketing {
    type: string
    sql: ${TABLE}.CONSENT_FOR_SMS_MARKETING ;;
  }

  dimension_group: d_start {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.D_START ;;
  }

  dimension_group: d_stop {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.D_STOP ;;
  }

  dimension: dd_payment_flag {
    type: string
    sql: ${TABLE}.DD_PAYMENT_FLAG ;;
  }

  dimension: dependents_flag {
    type: string
    sql: ${TABLE}.DEPENDENTS_FLAG ;;
  }

  dimension_group: dob {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.DOB ;;
  }

  dimension: employment_status {
    type: string
    sql: ${TABLE}.EMPLOYMENT_STATUS ;;
  }

  dimension_group: esignature_bank {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.ESIGNATURE_BANK_DATE ;;
  }

  dimension_group: esignature {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.ESIGNATURE_DATE ;;
  }

  dimension: final_decision {
    type: string
    sql: ${TABLE}.FINAL_DECISION ;;
  }

  dimension_group: final_decision {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.FINAL_DECISION_DATE ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.GENDER ;;
  }

  dimension: income {
    type: string
    sql: ${TABLE}.INCOME ;;
  }

  dimension_group: init_application_decision_dt {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.INIT_APPLICATION_DECISION_DT ;;
  }

  dimension: initial_application_decision {
    type: string
    sql: ${TABLE}.INITIAL_APPLICATION_DECISION ;;
  }

  dimension: loan_aer {
    type: string
    sql: ${TABLE}.LOAN_AER ;;
  }

  dimension: loan_amount_agreed {
    type: string
    sql: ${TABLE}.LOAN_AMOUNT_AGREED ;;
  }

  dimension: loan_amount_applied {
    type: string
    sql: ${TABLE}.LOAN_AMOUNT_APPLIED ;;
  }

  dimension: loan_apr {
    type: string
    sql: ${TABLE}.LOAN_APR ;;
  }

  dimension: loan_term_agreed {
    type: string
    sql: ${TABLE}.LOAN_TERM_AGREED ;;
  }

  dimension: loan_term_application {
    type: string
    sql: ${TABLE}.LOAN_TERM_APPLICATION ;;
  }

  dimension: loan_term_tier {
    type: string
    sql: ${TABLE}.LOAN_TERM_TIER ;;
  }

  dimension: loan_tier {
    type: string
    sql: ${TABLE}.LOAN_TIER ;;
  }

  dimension: loanpurpose {
    type: string
    sql: ${TABLE}.LOANPURPOSE ;;
  }

  dimension: marital_status {
    type: string
    sql: ${TABLE}.MARITAL_STATUS ;;
  }

  dimension: monthly_repayment_amt_at_appl {
    type: string
    sql: ${TABLE}.MONTHLY_REPAYMENT_AMT_AT_APPL ;;
  }

  dimension: net_monthly_income_tier {
    type: string
    sql: ${TABLE}.NET_MONTHLY_INCOME_TIER ;;
  }

  dimension: nk_cla {
    type: string
    sql: ${TABLE}.NK_CLA ;;
  }

  dimension: number_of_dependants {
    type: string
    sql: ${TABLE}.NUMBER_OF_DEPENDANTS ;;
  }

  dimension: preferred_contact_detail {
    type: string
    sql: ${TABLE}.PREFERRED_CONTACT_DETAIL ;;
  }

  dimension: preferred_contact_method {
    type: string
    sql: ${TABLE}.PREFERRED_CONTACT_METHOD ;;
  }

  dimension: premise_id {
    type: string
    sql: ${TABLE}.PREMISE_ID ;;
  }

  dimension: product_code {
    type: string
    sql: ${TABLE}.PRODUCT_CODE ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.PRODUCT_NAME ;;
  }

  dimension: promotion_code {
    type: string
    sql: ${TABLE}.PROMOTION_CODE ;;
  }

  dimension: reprocess_count {
    type: string
    sql: ${TABLE}.REPROCESS_COUNT ;;
  }

  dimension: residential_status {
    type: string
    sql: ${TABLE}.RESIDENTIAL_STATUS ;;
  }

  dimension: source_code {
    type: string
    sql: ${TABLE}.SOURCE_CODE ;;
  }

  dimension: source_device_id {
    type: string
    sql: ${TABLE}.SOURCE_DEVICE_ID ;;
  }

  dimension: total_payable_amt_at_applicat {
    type: string
    sql: ${TABLE}.TOTAL_PAYABLE_AMT_AT_APPLICAT ;;
  }

  dimension: weighted_apr_at_application {
    type: string
    sql: ${TABLE}.WEIGHTED_APR_AT_APPLICATION ;;
  }

  dimension: weighted_apr_final {
    type: string
    sql: ${TABLE}.WEIGHTED_APR_FINAL ;;
  }

  dimension: weighted_loan_term_application {
    type: string
    sql: ${TABLE}.WEIGHTED_LOAN_TERM_APPLICATION ;;
  }

  dimension: weighted_loan_term_final {
    type: string
    sql: ${TABLE}.WEIGHTED_LOAN_TERM_FINAL ;;
  }

  measure: counts {
    type: count
    drill_fields: []
  }
}
