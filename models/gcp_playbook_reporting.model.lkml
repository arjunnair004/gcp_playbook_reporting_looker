connection: "gcp_playbook_looker_bq"

# include all the views
include: "/views/**/*.view"

include: "base.lkml"

datagroup: gcp_playbook_reporting_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: gcp_playbook_reporting_default_datagroup

explore: customer_transactions {
  label:"Customer Transaction Details"
  join:customer_transactions_test  {
    type: left_outer
    sql_on: ${customer_transactions.customer_name}=${customer_transactions_test.customer_name} ;;
    relationship: many_to_one
  }
  }
