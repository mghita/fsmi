view: looker_fs_monthly_forecasts {

  sql_table_name: BOIFS.looker_FS_Monthly_Forecasts ;;

  measure: forecast_count {
    type: sum_distinct
    value_format: "#,##0"
    drill_fields: [detail*]
    sql: ${TABLE}.daily_forecast ;;
    sql_distinct_key: ${compound_primary_key};;
  }

  measure: forecast_count_OCT17 {
    type: sum_distinct
    value_format: "#,##0"
    drill_fields: [detail*]
    sql: ${TABLE}.daily_forecast_24oct17 ;;
    sql_distinct_key: ${compound_primary_key};;
  }

  dimension: compound_primary_key {
    primary_key: yes
    type: string
    hidden: yes
    sql: ${TABLE}.forecast_dt||${prod_subcategory} ;;
  }

  dimension_group:: forecast
  {
  type: time
  timeframes: [date, week, month, year]
  convert_tz: no
    sql:${TABLE}.forecast_dt;;
  }

  dimension: prod_category {
    type: string
    sql: ${TABLE}.PROD_CATEGORY ;;
  }

  dimension: prod_subcategory {
    type: string
    sql: ${TABLE}.PROD_SUBCATEGORY ;;
  }

  dimension: monthly_forecast {
    type: string
    sql: ${TABLE}.MONTHLY_FORECAST ;;
  }

  dimension: monthly_forecast_OCT17 {
    type: string
    sql: ${TABLE}.MONTHLY_FORECAST_24oct17;;
  }
  dimension: days_in_month {
    type: string
    sql: ${TABLE}.NO_DAYS ;;
  }

  dimension: daily_forecast {
    type: string
    sql: ${TABLE}.daily_forecast;;
  }

  dimension: daily_forecast_OCT17 {
    type: string
    sql: ${TABLE}.daily_forecast_24oct17;;
  }

  set: detail {
    fields: [
      forecast_year,
      forecast_month,
      forecast_date,
      prod_category,
      prod_subcategory,
      forecast_count
    ]
  }
}
