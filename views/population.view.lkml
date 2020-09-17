view: population {
  sql_table_name: `looker_demo.population`
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: year_2018 {
    type: number
    sql: ${TABLE}.year_2018 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
