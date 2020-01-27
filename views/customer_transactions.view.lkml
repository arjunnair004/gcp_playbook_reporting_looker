view: customer_transactions {
  sql_table_name: gcp_playbook_reporting.customer_transactions ;;

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
    map_layer_name: us_counties_fips
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.CustomerName ;;
  }

  measure: discount {
    type: number
    sql: ${TABLE}.Discount ;;
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
    type: number
    sql: ${TABLE}.Profit ;;
  }

  measure: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  measure: sales {
    type: number
    sql: ${TABLE}.Sales ;;
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
    type: number
    sql: ${TABLE}.ShippingCost ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: sub_category {
    type: string
    sql: ${TABLE}.SubCategory ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name, customer_name]
  }
}
