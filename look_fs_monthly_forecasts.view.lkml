view: look_fs_monthly_forecasts {
  derived_table: {
    sql: select * from boifs.look_FS_Monthly_Forecasts
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: yr {
    type: string
    sql: ${TABLE}.YR ;;
  }

  dimension: mon {
    type: date
    sql: ${TABLE}.MON ;;
  }

  dimension: prod_category {
    type: string
    sql: ${TABLE}.PROD_CATEGORY ;;
  }

  dimension: prod_subcategory {
    type: string
    sql: ${TABLE}.PROD_SUBCATEGORY ;;
  }

  dimension: forecast {
    type: string
    sql: ${TABLE}.FORECAST ;;
  }

  dimension: no_days {
    type: string
    sql: ${TABLE}.NO_DAYS ;;
  }

  dimension: forecast_per_day {
    type: string
    sql: ${TABLE}.FORECAST_PER_DAY ;;
  }

  set: detail {
    fields: [
      yr,
      mon,
      prod_category,
      prod_subcategory,
      forecast,
      no_days,
      forecast_per_day
    ]
  }
}
