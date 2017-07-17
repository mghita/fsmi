view: look_cc_ITO_codes {
  sql_table_name: BOIFS.LOOK_CC_ITO_CODES ;;

  dimension: hau_new  {
    type: string
    sql: ${TABLE}.HAU_NEW ;;
  }

  dimension: full_hau  {
    type: string
    sql: ${TABLE}.FULL_HAU ;;
  }

  dimension: hau_type  {
    type: string
    sql: ${TABLE}.HAU_TYPE ;;
  }

  dimension: hau_site  {
    type: string
    sql: ${TABLE}.HAU_SITE ;;
  }

  dimension: hau_desc  {
    type: string
    sql: ${TABLE}.HAU_DESC ;;
  }

  dimension: hau_subsite  {
    type: string
    sql: ${TABLE}.HAU_SUBSITE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
