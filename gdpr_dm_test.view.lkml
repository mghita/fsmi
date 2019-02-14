view: gdpr_dm_test {
  sql_table_name: BOIFS.looker_gdpr_dm ;;

  measure: count {
    type: count_distinct
    drill_fields: [detail*]
    sql: ${TABLE}.customer_key ;;
  }

  dimension: customer_key {
    type: string
    sql: ${TABLE}.customer_key ;;
  }

  dimension: my_car_dm {
    type: string
    sql: ${TABLE}.MY_CAR_DM ;;
  }

  dimension: my_ins_dm {
    type: string
    sql: ${TABLE}.MY_INS_DM ;;
  }

  dimension: my_trv_dm {
    type: string
    sql: ${TABLE}.MY_TRV_DM ;;
  }

  dimension: my_money_dm {
    type: string
    sql: ${TABLE}.MY_MONEY_DM ;;
  }


  set: detail {
    fields: [customer_key, my_car_dm, my_ins_dm, my_trv_dm, my_money_dm]
  }
}
