connection: "gcp_playbook_looker_bq"

# include all the views
include: "/views/**/*.view"

datagroup: gcp_playbook_reporting_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: gcp_playbook_reporting_default_datagroup

explore: customer_transactions {
  label:"Customer Transaction Details"
  }

explore: customer_transactions_test {
  hidden: yes
  extends: [customer_transactions_test]
  view_label: "Order Information"
  # The additional things you want to add or change
  # in the new Explore
}
