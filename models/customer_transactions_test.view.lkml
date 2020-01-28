view: customer_transactions_test {
  sql_table_name: gcp_test.customer_transactions_test ;;

  dimension: age {
    type: number
    sql: ${TABLE}.Age ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.CustomerName ;;
  }

}
