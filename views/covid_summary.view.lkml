view: covid_summary {
  sql_table_name: `looker_demo.covid_summary`
    ;;

  dimension: active {
    type: number
    sql: ${TABLE}.Active ;;
  }

  dimension: confirmed {
    type: number
    sql: ${TABLE}.Confirmed ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }

  dimension: deaths {
    type: number
    sql: ${TABLE}.Deaths ;;
  }

  dimension: recovered {
    type: number
    sql: ${TABLE}.Recovered ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
