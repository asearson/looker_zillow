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

  dimension: monthly_mortgage {
    type: number
    sql: ${TABLE}.DateMonthData ;;
  }

  dimension: metro {
    type: string
    sql: ${TABLE}.Metro ;;
  }

  dimension: region_id {
    type: number
    primary_key: yes
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

  measure: count {
    type: count
    drill_fields: [region_name, county_name]
  }
}
