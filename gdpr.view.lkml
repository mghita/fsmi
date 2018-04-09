view: gdpr {
  sql_table_name: BOIFS.LOOKER_GDPR_CAMPAIGN ;;

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CAMPAIGN_NAME ;;
  }

  dimension: consentforemail {
    type: string
    sql: ${TABLE}.CONSENTFOREMAIL ;;
  }

  dimension: consentforsms {
    type: string
    sql: ${TABLE}.CONSENTFORSMS ;;
  }

  dimension: consentforphone {
    type: string
    sql: ${TABLE}.CONSENTFORPHONE ;;
  }

  dimension: consentforpost {
    type: string
    sql: ${TABLE}.CONSENTFORPOST ;;
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

  set: detail {
    fields: [
      campaign_name,
      consentforemail,
      consentforsms,
      consentforphone,
      consentforpost,
      total_contacted,
      opened,
      clicked,
      unsubscribed
    ]
  }
}
