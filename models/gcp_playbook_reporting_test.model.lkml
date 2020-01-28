connection: "gcp_playbook_reporting_test"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project


datagroup: gcp_playbook_reporting_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: gcp_playbook_reporting_default_datagroup

explore: customer_transactions_test {
 hidden: yes
  label:"Customer Transaction Details Test"
}
