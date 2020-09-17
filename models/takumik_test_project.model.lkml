connection: "a_conn"

# include all the views
include: "/views/**/*.view"

datagroup: takumik_test_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: takumik_test_project_default_datagroup

explore: covid_summary {}

explore: population {}
