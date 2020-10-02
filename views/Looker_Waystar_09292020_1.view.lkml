explore:  Looker_Waystar_09292020_1 {}

view: Looker_Waystar_09292020_1 {
  derived_table: {
    sql: SELECT * FROM
      OPENROWSET('MSDASQL', 'DRIVER={SQL Server}; SERVER=localhost; Trusted_Connection=yes', 'EXEC TEST_DB_LKR..[Looker_withparam] "jadsfkhadsdf", "category1", "user1"')
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: userid {
    type: string
    sql: ${TABLE}.userid ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  dimension: orderid {
    type: string
    sql: ${TABLE}.Orderid ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.Customer ;;
  }

  dimension: orderdate {
    type: string
    sql: ${TABLE}.orderdate ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: productname {
    type: string
    sql: ${TABLE}.productname ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: subcategory {
    type: string
    sql: ${TABLE}.subcategory ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  set: detail {
    fields: [
      userid,
      username,
      orderid,
      customer,
      orderdate,
      country,
      state,
      productname,
      category,
      subcategory,
      sales,
      quantity
    ]
  }
}
