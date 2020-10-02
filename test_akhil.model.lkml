connection: "mysql-server"

# include all the views
include: "/views/**/*.view"

datagroup: test_akhil_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_akhil_default_datagroup



explore: kishor_aspcheck_test {}

explore: kishor_aspcheck_test2 {}

explore: looker_table {}

explore: looker_table_one {}

explore: order_lists {}

explore: orderbreakdown {}

explore: patientinfo {}

explore: personinfo {}

explore: placementinfo {}

explore: report_1 {}

explore: salesview {}

explore: salesviewwithparam {}

explore: table2 {}

explore: tablename {}

explore: tableone {}

explore: user_demo {}
