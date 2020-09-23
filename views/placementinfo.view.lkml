view: placementinfo {
  sql_table_name: dbo.placementinfo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: agency_id {
    type: string
    sql: ${TABLE}.AgencyId ;;
  }

  dimension: narexagency_id {
    type: string
    sql: ${TABLE}.NAREXAgencyId ;;
  }

  dimension_group: placementcloseddate {
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
    sql: ${TABLE}.placementcloseddate ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
