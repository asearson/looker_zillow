view: single_family_residence {
  sql_table_name: zillow_data.single_family_residence ;;

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: county_name {
    type: string
    sql: ${TABLE}.CountyName ;;
  }

  dimension: date_month {
    type: string
    sql: ${TABLE}.DateMonth ;;
  }

  dimension: year {
    type: number
    sql: substr(${date_month},1,4) ;;
  }

  dimension: home_price {
    type: number
    sql: ${TABLE}.DateMonthData ;;
  }

  dimension: metro {
    type: string
    sql: ${TABLE}.Metro ;;
  }

  dimension: id {
    type: string
    primary_key: yes
    sql: CONCAT(CAST(${TABLE}.RegionID AS STRING), CAST(${TABLE}.DateMonthData AS STRING)) ;;
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.RegionID ;;
  }

  dimension: region_name {
    type: zipcode
    sql: ${TABLE}.RegionName ;;
  }

  dimension: size_rank {
    type: number
    sql: ${TABLE}.SizeRank ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: average_home_price {
    type: average
    sql: ${home_price} ;;
  }

  measure: count {
    type: count
    drill_fields: [region_name, county_name]
  }
}
