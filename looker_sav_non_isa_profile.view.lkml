view: looker_sav_non_isa_profile {
    sql_table_name: boifs.looker_sav_non_isa_profile
      ;;

  measure: cust_count {
    type: sum
    drill_fields: [detail*]
    sql: ${customer_count} ;;
  }

  dimension: fs_product {
    type: string
    sql: ${TABLE}.FS_PRODUCT ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.CHANNEL ;;
  }

  dimension: channel_source {
    type: string
    sql: ${TABLE}.CHANNEL_SOURCE ;;
  }

  dimension: age {
    type: string
    sql: ${TABLE}.AGE ;;
  }

  dimension: aa_segment {
    type: string
    sql: ${TABLE}.AA_SEGMENT ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.GENDER ;;
  }

  dimension: postal_region {
    type: string
    sql: ${TABLE}.POSTAL_REGION ;;
  }

  dimension: exp_fss_group {
    type: string
    sql: ${TABLE}.EXP_FSS_GROUP ;;
  }

  dimension: tenure {
    type: string
    sql: ${TABLE}.TENURE ;;
  }

  dimension: member_status {
    type: string
    sql: ${TABLE}.MEMBER_STATUS ;;
  }

  dimension: customer_count {
    type: string
    sql: ${TABLE}.CUSTOMER_COUNT ;;
  }

  set: detail {
    fields: [
      fs_product,
      channel,
      channel_source,
      age,
      aa_segment,
      gender,
      postal_region,
      exp_fss_group,
      tenure,
      member_status,
      customer_count
    ]
  }
}
