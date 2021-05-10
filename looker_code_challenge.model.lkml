connection: "vertica_test_coding_challenge"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

explore: game_of_thrones {
  view_name: got_data
  label: "Game of Thrones Data"
}

explore: nfl_qb_data {
  view_name: nfl_qb_data
  label: "NFL Quarterback Data"
}
