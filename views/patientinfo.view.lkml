view: patientinfo {
  sql_table_name: dbo.Patientinfo ;;

  dimension: accounttype {
    type: string
    sql: ${TABLE}.accounttype ;;
  }

  dimension: c_id {
    type: number
    sql: ${TABLE}.C_id ;;
  }

  dimension: currentbalance {
    type: number
    sql: ${TABLE}.currentbalance ;;
  }

  dimension: patientid {
    type: string
    sql: ${TABLE}.patientid ;;
  }

  dimension: patientname {
    type: string
    sql: ${TABLE}.patientname ;;
  }

  measure: count {
    type: count
    drill_fields: [patientname]
  }
}
