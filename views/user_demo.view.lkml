view: user_demo {
  sql_table_name: dbo.user_demo ;;

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."First Name" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."Last Name" ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name]
  }
}
