connection: "sam_bigquery"

# include all the views
include: "/views/**/*.view"

datagroup: sam_second_looker_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sam_second_looker_default_datagroup

explore: bumblebee_data_trans {}
