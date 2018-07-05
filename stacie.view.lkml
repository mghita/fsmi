view: stacie {
  derived_table: {
    sql: select * from boifs.looker_loan_application
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: nk_cla {
    type: string
    sql: ${TABLE}.NK_CLA ;;
  }

  dimension: d_start {
    type: date
    sql: ${TABLE}.D_START ;;
  }

  dimension: d_stop {
    type: date
    sql: ${TABLE}.D_STOP ;;
  }

  dimension: premise_id {
    type: string
    sql: ${TABLE}.PREMISE_ID ;;
  }

  dimension: application_id {
    type: string
    sql: ${TABLE}.APPLICATION_ID ;;
  }

  dimension: application_number {
    type: string
    sql: ${TABLE}.APPLICATION_NUMBER ;;
  }

  dimension: application_date {
    type: date
    sql: ${TABLE}.APPLICATION_DATE ;;
  }

  dimension: loan_amount_applied {
    type: string
    sql: ${TABLE}.LOAN_AMOUNT_APPLIED ;;
  }

  dimension: loan_term_application {
    type: string
    sql: ${TABLE}.LOAN_TERM_APPLICATION ;;
  }

  dimension: loan_apr {
    type: string
    sql: ${TABLE}.LOAN_APR ;;
  }

  dimension: loan_aer {
    type: string
    sql: ${TABLE}.LOAN_AER ;;
  }

  dimension: loanpurpose {
    type: string
    sql: ${TABLE}.LOANPURPOSE ;;
  }

  dimension: source_code {
    type: string
    sql: ${TABLE}.SOURCE_CODE ;;
  }

  dimension: promotion_code {
    type: string
    sql: ${TABLE}.PROMOTION_CODE ;;
  }

  dimension: source_device_id {
    type: string
    sql: ${TABLE}.SOURCE_DEVICE_ID ;;
  }

  dimension: product_code {
    type: string
    sql: ${TABLE}.PRODUCT_CODE ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.PRODUCT_NAME ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.CAMPAIGN_ID ;;
  }

  dimension: campaign_code {
    type: string
    sql: ${TABLE}.CAMPAIGN_CODE ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CAMPAIGN_NAME ;;
  }

  dimension: campaign_headline_rate {
    type: string
    sql: ${TABLE}.CAMPAIGN_HEADLINE_RATE ;;
  }

  dimension: campaign_product_code {
    type: string
    sql: ${TABLE}.CAMPAIGN_PRODUCT_CODE ;;
  }

  dimension: campaign_product_name {
    type: string
    sql: ${TABLE}.CAMPAIGN_PRODUCT_NAME ;;
  }

  dimension: campaign_start_date {
    type: date
    sql: ${TABLE}.CAMPAIGN_START_DATE ;;
  }

  dimension: campaign_end_date {
    type: date
    sql: ${TABLE}.CAMPAIGN_END_DATE ;;
  }

  dimension: advertised_loan_apr {
    type: string
    sql: ${TABLE}.ADVERTISED_LOAN_APR ;;
  }

  dimension: esignature_date {
    type: date
    sql: ${TABLE}.ESIGNATURE_DATE ;;
  }

  dimension: esignature_bank_date {
    type: date
    sql: ${TABLE}.ESIGNATURE_BANK_DATE ;;
  }

  dimension: dd_payment_flag {
    type: string
    sql: ${TABLE}.DD_PAYMENT_FLAG ;;
  }

  dimension: loan_tier {
    type: string
    sql: ${TABLE}.LOAN_TIER ;;
  }

  dimension: loan_term_tier {
    type: string
    sql: ${TABLE}.LOAN_TERM_TIER ;;
  }

  dimension: total_payable_amt_at_applicat {
    type: string
    sql: ${TABLE}.TOTAL_PAYABLE_AMT_AT_APPLICAT ;;
  }

  dimension: monthly_repayment_amt_at_appl {
    type: string
    sql: ${TABLE}.MONTHLY_REPAYMENT_AMT_AT_APPL ;;
  }

  dimension: net_monthly_income_tier {
    type: string
    sql: ${TABLE}.NET_MONTHLY_INCOME_TIER ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.CHANNEL ;;
  }

  dimension: initial_application_decision {
    type: string
    sql: ${TABLE}.INITIAL_APPLICATION_DECISION ;;
  }

  dimension: init_application_decision_dt {
    type: date
    sql: ${TABLE}.INIT_APPLICATION_DECISION_DT ;;
  }

  dimension: application_decision {
    type: string
    sql: ${TABLE}.APPLICATION_DECISION ;;
  }

  dimension: application_decision_date {
    type: date
    sql: ${TABLE}.APPLICATION_DECISION_DATE ;;
  }

  dimension: final_decision {
    type: string
    sql: ${TABLE}.FINAL_DECISION ;;
  }

  dimension: final_decision_date {
    type: date
    sql: ${TABLE}.FINAL_DECISION_DATE ;;
  }

  dimension: client_unique_id {
    type: string
    sql: ${TABLE}.CLIENT_UNIQUE_ID ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.GENDER ;;
  }

  dimension: dob {
    type: date
    sql: ${TABLE}.DOB ;;
  }

  dimension: age {
    type: string
    sql: ${TABLE}.AGE ;;
  }

  dimension: income {
    type: string
    sql: ${TABLE}.INCOME ;;
  }

  dimension: employment_status {
    type: string
    sql: ${TABLE}.EMPLOYMENT_STATUS ;;
  }

  dimension: residential_status {
    type: string
    sql: ${TABLE}.RESIDENTIAL_STATUS ;;
  }

  dimension: marital_status {
    type: string
    sql: ${TABLE}.MARITAL_STATUS ;;
  }

  dimension: number_of_dependants {
    type: string
    sql: ${TABLE}.NUMBER_OF_DEPENDANTS ;;
  }

  dimension: dependents_flag {
    type: string
    sql: ${TABLE}.DEPENDENTS_FLAG ;;
  }

  dimension: aa_member_flag {
    type: string
    sql: ${TABLE}.AA_MEMBER_FLAG ;;
  }

  dimension: consent_for_sms_marketing {
    type: string
    sql: ${TABLE}.CONSENT_FOR_SMS_MARKETING ;;
  }

  dimension: consent_for_letter_marketing {
    type: string
    sql: ${TABLE}.CONSENT_FOR_LETTER_MARKETING ;;
  }

  dimension: consent_for_email_marketing {
    type: string
    sql: ${TABLE}.CONSENT_FOR_EMAIL_MARKETING ;;
  }

  dimension: preferred_contact_method {
    type: string
    sql: ${TABLE}.PREFERRED_CONTACT_METHOD ;;
  }

  dimension: preferred_contact_detail {
    type: string
    sql: ${TABLE}.PREFERRED_CONTACT_DETAIL ;;
  }

  dimension: reprocess_count {
    type: string
    sql: ${TABLE}.REPROCESS_COUNT ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}.ACCOUNT_NUMBER ;;
  }

  dimension: loan_amount_agreed {
    type: string
    sql: ${TABLE}.LOAN_AMOUNT_AGREED ;;
  }

  dimension: loan_term_agreed {
    type: string
    sql: ${TABLE}.LOAN_TERM_AGREED ;;
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

  dimension: member_flag {
    type: string
    sql: ${TABLE}.MEMBER_FLAG ;;
  }

  set: detail {
    fields: [
      nk_cla,
      d_start,
      d_stop,
      premise_id,
      application_id,
      application_number,
      application_date,
      loan_amount_applied,
      loan_term_application,
      loan_apr,
      loan_aer,
      loanpurpose,
      source_code,
      promotion_code,
      source_device_id,
      product_code,
      product_name,
      campaign_id,
      campaign_code,
      campaign_name,
      campaign_headline_rate,
      campaign_product_code,
      campaign_product_name,
      campaign_start_date,
      campaign_end_date,
      advertised_loan_apr,
      esignature_date,
      esignature_bank_date,
      dd_payment_flag,
      loan_tier,
      loan_term_tier,
      total_payable_amt_at_applicat,
      monthly_repayment_amt_at_appl,
      net_monthly_income_tier,
      channel,
      initial_application_decision,
      init_application_decision_dt,
      application_decision,
      application_decision_date,
      final_decision,
      final_decision_date,
      client_unique_id,
      gender,
      dob,
      age,
      income,
      employment_status,
      residential_status,
      marital_status,
      number_of_dependants,
      dependents_flag,
      aa_member_flag,
      consent_for_sms_marketing,
      consent_for_letter_marketing,
      consent_for_email_marketing,
      preferred_contact_method,
      preferred_contact_detail,
      reprocess_count,
      account_number,
      loan_amount_agreed,
      loan_term_agreed,
      weighted_apr_at_application,
      weighted_apr_final,
      weighted_loan_term_application,
      weighted_loan_term_final,
      member_flag
    ]
  }
}
