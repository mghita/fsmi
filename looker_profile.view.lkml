view: looker_profile {
    sql_table_name: boifs.looker_profile
      ;;

  measure: cust_count {
    type: sum
    drill_fields: [detail*]
    sql: ${customer_count} ;;
  }

  measure: member_age_count_final {
    type: max
    drill_fields: [detail*]
    sql: ${member_age_count} ;;
  }

  measure: member_segment_count_final {
    type: max
    drill_fields: [detail*]
    sql: ${member_segment_count} ;;
  }

  measure: member_gender_count_final {
    type: max
    drill_fields: [detail*]
    sql: ${member_gender_count} ;;
  }

  measure: member_region_count_final {
    type: max
    drill_fields: [detail*]
    sql: ${member_region_count} ;;
  }

  measure: member_fss_count_final {
    type: max
    drill_fields: [detail*]
    sql: ${member_fss_count} ;;
  }

  measure: member_tenure_count_final {
    type: max
    drill_fields: [detail*]
    sql: ${member_tenure_count} ;;
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
    hidden: yes
    type: string
    sql: ${TABLE}.CUSTOMER_COUNT ;;
  }

  dimension: member_age_count {
    hidden: yes
    type: string
    sql: ${TABLE}.member_age_count ;;
  }

  dimension: member_segment_count {
    hidden: yes
    type: string
    sql: ${TABLE}.member_segment_count ;;
  }

  dimension: member_gender_count {
    hidden: yes
    type: string
    sql: ${TABLE}.member_gender_count ;;
  }

  dimension: member_region_count {
    hidden: yes
    type: string
    sql: ${TABLE}.member_region_count ;;
  }

  dimension: member_fss_count {
    hidden: yes
    type: string
    sql: ${TABLE}.member_fss_count ;;
  }

  dimension: member_tenure_count {
    hidden: yes
    type: string
    sql: ${TABLE}.member_tenure_count ;;
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
      customer_count,
      member_age_count,
      member_segment_count,
      member_gender_count,
      member_region_count,
      member_fss_count,
      member_tenure_count
    ]
  }
}
