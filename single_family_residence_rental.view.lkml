view: single_family_residence_rental {
  sql_table_name: zillow_data.single_family_residence_rental ;;

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

  dimension: rental_income_per_month {
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
    type: number
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

  measure: rental_income_per_month_sum {
    type: sum
    sql: ${TABLE}.DateMonthData ;;
  }

  measure: count {
    type: count
    drill_fields: [region_name, county_name]
  }
}
