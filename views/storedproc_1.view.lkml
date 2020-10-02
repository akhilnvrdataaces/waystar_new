explore: storedproc1 {}
view: storedproc1 {
derived_table: {
sql:  EXEC TEST_DB_LKR..[Looker_withoutparam];;
}

  dimension: orderid{

    type: string

    sql: ${TABLE}.orderid ;;

  }

  dimension: customer{

    type: string

    sql: ${TABLE}.customer ;;

  }
  dimension: country{

    type: string

    sql: ${TABLE}.country ;;
  }
}
