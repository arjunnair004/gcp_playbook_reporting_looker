view: customer_transactions {
  sql_table_name: gcp_playbook_reporting.customer_transactions ;;

  dimension: category {
    group_label: "Category"
    type: string
    sql: ${TABLE}.Category ;;
  }



  dimension: sub_category {
  group_label: "Category"
    type: string
    sql: ${TABLE}.SubCategory ;;
  }

  dimension: city {
    group_label: "Billing address"
    type: string
    sql: ${TABLE}.City ;;
    map_layer_name: us_counties_fips
  }

  dimension: country {
    group_label: "Billing address"
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.CustomerName ;;
  }

  measure: discount {
    type: sum
    sql: ${TABLE}.Discount ;;
    value_format_name: usd
  }

  dimension: market {
    type: string
    sql: ${TABLE}.Market ;;
  }

  dimension_group: order {
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
    sql: ${TABLE}.OrderDate ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.ProductName ;;
  }

  measure: profit {
    type: sum
    sql: ${TABLE}.Profit ;;
    value_format_name: usd
  }

  measure: quantity {
    type: sum
    sql: ${TABLE}.Quantity ;;
  }

  dimension: region {
    group_label: "Billing address"
    type: string
    sql: ${TABLE}.Region ;;
  }

  measure: sales {
    type: sum
    sql: ${TABLE}.Sales ;;
    value_format_name: usd
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.Segment ;;
  }

  dimension_group: ship {
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
    sql: ${TABLE}.ShipDate ;;
  }

  dimension: ship_mode {
    type: string
    sql: ${TABLE}.ShipMode ;;
  }

  measure: shipping_cost {
    type: sum
    sql: ${TABLE}.ShippingCost ;;
    value_format_name: usd
  }

  dimension: state {
    group_label: "Billing address"
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name, customer_name]
  }
}
