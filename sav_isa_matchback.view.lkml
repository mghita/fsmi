view: sav_isa_matchback {
  sql_table_name: boifs.looker_sav_isa_matchback_data;;


  measure: counts {
    type: count
    drill_fields: [detail*]
  }

  measure: count_applications {
    type: count
    filters: {field:account_number value: "-NULL"}
  }

  measure: pct_activated_of_all_comms {
    type: number
    value_format: "0.00\%"
    sql: 100.0*${count_applications}/NULLIF(${counts},0);;
  }

  measure: follow_up_volume {
    type: sum
    sql: case when ${TABLE}.FOLLOW_UP_FLAG = 'Follow Up' then 1 else 0 end;;
  }

  measure: no_follow_up_volume {
    type: sum
    sql: case when ${TABLE}.FOLLOW_UP_FLAG = 'No Follow Up' then 1 else 0 end;;
  }

  measure: initial_opened {
    type: sum
    sql: ${TABLE}.INITIAL_OPENED;;
  }

  measure: fup_opened {
    type: sum
    sql: ${TABLE}.FUP_OPENED;;
  }

  measure: opened {
    type: sum
    sql: case when ${TABLE}.INITIAL_OPENED = 1 or ${TABLE}.FUP_OPENED = 1 then 1 else 0 end;;
  }

  measure: initial_clicked {
    type: sum
    sql: ${TABLE}.INITIAL_CLICKED;;
  }

  measure: fup_clicked {
    type: sum
    sql: ${TABLE}.FUP_CLICKED;;
  }

  measure: clicked {
    type: sum
    sql: case when ${TABLE}.INITIAL_CLICKED = 1 or ${TABLE}.FUP_CLICKED = 1 then 1 else 0 end;;
  }

  measure: initial_unsubscribed {
    type: sum
    sql: ${TABLE}.INITIAL_UNSUBSCRIBED;;
  }

  measure: fup_unsubscribed {
    type: sum
    sql: ${TABLE}.FUP_UNSUBSCRIBED;;
  }

  measure: unsubscribed {
    type: sum
    sql: case when ${TABLE}.INITIAL_UNSUBSCRIBED = 1 or ${TABLE}.FUP_UNSUBSCRIBED = 1 then 1 else 0 end;;
  }

  measure: initial_complaint {
    type: sum
    sql: ${TABLE}.INITIAL_COMPLAINT;;
  }

  measure: fup_complaint {
    type: sum
    sql: ${TABLE}.FUP_COMPLAINT;;
  }

  measure: complaint {
    type: sum
    sql: case when ${TABLE}.INITIAL_COMPLAINT = 1 or ${TABLE}.FUP_COMPLAINT = 1 then 1 else 0 end;;
  }

  dimension: campaign_code {
    type: string
    sql: ${TABLE}.CAMPAIGN_CODE ;;
  }

  dimension: first_communication_date {
    type: date
    sql: ${TABLE}.FIRST_COMMUNICATION_DATE ;;
  }

  dimension: last_communication_date {
    type: date
    sql: ${TABLE}.LAST_COMMUNICATION_DATE ;;
  }

  dimension: segment_description {
    type: string
    sql: ${TABLE}.SEGMENT_DESCRIPTION ;;
  }

  dimension: treatment_cell_code {
    type: string
    sql: ${TABLE}.TREATMENT_CELL_CODE ;;
  }

  dimension: fallow_flag {
    type: string
    sql: ${TABLE}.FALLOW_FLAG ;;
  }

  dimension: follow_up_flag {
    type: string
    sql: ${TABLE}.FOLLOW_UP_FLAG ;;
  }

  dimension: account_number {
    type: string
    hidden: yes
    sql: ${TABLE}.ACCOUNT_NUMBER ;;
  }

  dimension: activation_date {
    type: date
    hidden: yes
    sql: ${TABLE}.ACTIVATION_DATE ;;
  }

  dimension_group: application_dt {
    type: time
    timeframes: [date, week, month, year, raw]
    convert_tz: no
    sql: ${TABLE}.APPLICATION_DATE ;;
  }



  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: prod_code {
    type: string
    sql: ${TABLE}.prod_code ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.MEDIUM ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.SOURCE ;;
  }

  dimension: initial_opened_var {
    type: string
    hidden: yes
    sql: ${TABLE}.INITIAL_OPENED ;;
  }

  dimension: fup_opened_var {
    type: string
    hidden: yes
    sql: ${TABLE}.FUP_OPENED ;;
  }

  dimension: initial_clicked_var {
    type: string
    hidden: yes
    sql: ${TABLE}.INITIAL_CLICKED ;;
  }

  dimension: fup_clicked_var {
    type: string
    hidden: yes
    sql: ${TABLE}.FUP_CLICKED ;;
  }

  dimension: initial_unsubscribed_var {
    type: string
    hidden: yes
    sql: ${TABLE}.INITIAL_UNSUBSCRIBED ;;
  }

  dimension: fup_unsubscribed_var {
    type: string
    hidden: yes
    sql: ${TABLE}.FUP_UNSUBSCRIBED ;;
  }

  set: detail {
    fields: [
      campaign_code,
      first_communication_date,
      last_communication_date,
      segment_description,
      treatment_cell_code,
      fallow_flag,
      follow_up_flag,
      account_number,
      activation_date,
      status,
      prod_code,
      medium,
      source,
      initial_opened,
      fup_opened,
      initial_clicked,
      fup_clicked,
      initial_unsubscribed,
      fup_unsubscribed
    ]
  }
}
