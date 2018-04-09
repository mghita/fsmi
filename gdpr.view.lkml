view: gdpr {
  sql_table_name: BOIFS.LOOKER_GDPR_CAMPAIGN ;;

  measure: tot_contacted {
    type: max
    drill_fields: [detail*]
    value_format: "#,##0"
    sql: ${total_contacted};;
  }

  measure: tot_opened {
    type: max
    drill_fields: [detail*]
    value_format: "#,##0"
    sql: ${opened};;
  }

  measure: tot_clicked {
    type: max
    drill_fields: [detail*]
    value_format: "#,##0"
    sql: ${clicked};;
  }

  measure: tot_unsubscribed {
    type: max
    drill_fields: [detail*]
    value_format: "#,##0"
    sql: ${unsubscribed};;
  }

  measure: tot_responded {
    type: max
    drill_fields: [detail*]
    value_format: "#,##0"
    sql: ${responded};;
  }

  measure: tot_em_opt_out {
    type: max
    drill_fields: [detail*]
    value_format: "#,##0"
    sql: ${em_opt_out};;
  }

  measure: tot_sms_opt_out {
    type: max
    drill_fields: [detail*]
    value_format: "#,##0"
    sql: ${sms_opt_out};;
  }

  measure: tot_dm_opt_out {
    type: max
    drill_fields: [detail*]
    value_format: "#,##0"
    sql: ${dm_opt_out};;
  }

  measure: tot_phone_opt_out {
    type: max
    drill_fields: [detail*]
    value_format: "#,##0"
    sql: ${phone_opt_out};;
  }

  measure: tot_response_rate {
    type: max
    drill_fields: [detail*]
    value_format: "0.000\%"
    sql: ${response_rate};;
  }

  measure: tot_em_opt_out_rate {
    type: max
    drill_fields: [detail*]
    value_format: "0.000\%"
    sql: ${em_opt_out_rate};;
  }

  measure: tot_sms_opt_out_rate {
    type: max
    drill_fields: [detail*]
    value_format: "0.000\%"
    sql: ${sms_opt_out_rate};;
  }

  measure: tot_dm_opt_out_rate {
    type: max
    drill_fields: [detail*]
    value_format: "0.000\%"
    sql: ${dm_opt_out_rate};;
  }

  measure: tot_phone_opt_out_rate {
    type: max
    drill_fields: [detail*]
    value_format: "0.000\%"
    sql: ${phone_opt_out_rate};;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CAMPAIGN_NAME ;;
  }

  dimension: total_contacted {
    type: string
    sql: ${TABLE}.TOTAL_CONTACTED ;;
  }

  dimension: opened {
    type: string
    sql: ${TABLE}.OPENED ;;
  }

  dimension: clicked {
    type: string
    sql: ${TABLE}.CLICKED ;;
  }

  dimension: unsubscribed {
    type: string
    sql: ${TABLE}.UNSUBSCRIBED ;;
  }

  dimension: responded {
    type: string
    sql: ${TABLE}.responded ;;
  }

  dimension: em_opt_out {
    type: string
    sql: ${TABLE}.em_opt_out ;;
  }

  dimension: sms_opt_out {
    type: string
    sql: ${TABLE}.sms_opt_out ;;
  }

  dimension: dm_opt_out {
    type: string
    sql: ${TABLE}.dm_opt_out ;;
  }

  dimension: phone_opt_out {
    type: string
    sql: ${TABLE}.phone_opt_out ;;
  }

  dimension: em_remained {
    type: string
    sql: ${TABLE}.em_remained ;;
  }

  dimension: sms_remained {
    type: string
    sql: ${TABLE}.sms_remained ;;
  }

  dimension: dm_remained {
    type: string
    sql: ${TABLE}.dm_remained ;;
  }

  dimension: phone_remained {
    type: string
    sql: ${TABLE}.phone_remained ;;
  }

  dimension: response_rate {
    type: string
    sql: ${TABLE}.response_rate ;;
  }

  dimension: em_opt_out_rate {
    type: string
    sql: ${TABLE}.em_opt_out_rate ;;
  }

  dimension: sms_opt_out_rate {
    type: string
    sql: ${TABLE}.sms_opt_out_rate ;;
  }

  dimension: dm_opt_out_rate {
    type: string
    sql: ${TABLE}.dm_opt_out_rate ;;
  }

  dimension: phone_opt_out_rate {
    type: string
    sql: ${TABLE}.phone_opt_out_rate ;;
  }
  set: detail {
    fields: [
      campaign_name,
      total_contacted,
      opened,
      clicked,
      unsubscribed,
      responded,
      em_opt_out,
      sms_opt_out,
      dm_opt_out,
      phone_opt_out,
      em_remained,
      sms_remained,
      dm_remained,
      phone_remained,
      response_rate,
      em_opt_out_rate,
      sms_opt_out_rate,
      dm_opt_out_rate,
      phone_opt_out_rate

    ]
  }
}
