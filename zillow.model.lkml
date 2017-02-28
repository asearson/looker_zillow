connection: "lookerdata_publicdata_standard_sql"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: single_family_residence {
  join: single_family_residence_rental {
    type: left_outer
    relationship: one_to_one
    sql_on: ${single_family_residence.id} = ${single_family_residence_rental.id};;
  }
}
