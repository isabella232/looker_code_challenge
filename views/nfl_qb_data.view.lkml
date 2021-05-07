view: nfl_qb_data {
  sql_table_name: coding_challenge.nfl_qb_data ;;

  measure: completion_percentage {
    type: average
    sql: ${TABLE}.completion_percentage ;;
  }

  measure: fumbles {
    type: sum
    sql: ${TABLE}.fumbles ;;
  }

  measure: fumbles_lost {
    type: sum
    sql: ${TABLE}.fumbles_lost ;;
  }

  measure: games_played {
    type: sum
    sql: ${TABLE}.games_played ;;
  }

  measure: games_started {
    type: sum
    sql: ${TABLE}.games_started ;;
  }

  dimension: home_or_away {
    type: string
    sql: ${TABLE}.home_or_away ;;
  }

  measure: ints {
    type: sum
    sql: ${TABLE}.ints ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: opponent {
    type: string
    sql: ${TABLE}.opponent ;;
  }

  dimension: outcome {
    type: string
    sql: ${TABLE}.outcome ;;
  }

  measure: average_passer_rating {
    type: average
    sql: CASE WHEN ${TABLE}.passer_rating <> 0 THEN ${TABLE}.passer_rating ELSE NULL END ;;
  }

  measure: passes_attempted {
    type: sum
    sql: ${TABLE}.passes_attempted ;;
  }

  measure: passes_completed {
    type: sum
    sql: ${TABLE}.passes_completed ;;
  }

  measure: passing_yards {
    type: sum
    sql: ${TABLE}.passing_yards ;;
  }

  measure: passing_yards_per_game {
    type: number
    sql: ZSDIV(${passing_yards},${games_played}) ;;
  }

  measure: passing_yards_per_attempt {
    type: average
    sql: ${TABLE}.passing_yards_per_attempt ;;
  }

  dimension: player_id {
    type: string
    sql: ${TABLE}.player_id ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}."position" ;;
  }

  measure: rushing_attempts {
    type: sum
    sql: ${TABLE}.rushing_attempts ;;
  }

  measure: rushing_tds {
    type: sum
    sql: ${TABLE}.rushing_tds ;;
  }

  measure: rushing_yards {
    type: sum
    sql: ${TABLE}.rushing_yards ;;
  }

  measure: sacked_yards_lost {
    type: sum
    sql: ${TABLE}.sacked_yards_lost ;;
  }

  measure: sacks {
    type: sum
    sql: ${TABLE}.sacks ;;
  }

  dimension: score {
    type: string
    sql: ${TABLE}.score ;;
  }

  dimension: season {
    type: string
    sql: ${TABLE}.season ;;
  }

  measure: td_passes {
    type: sum
    sql: ${TABLE}.td_passes ;;
  }

  dimension: week {
    type: number
    sql: ${TABLE}.week ;;
  }

  measure: average_yards_per_carry {
    type: average
    sql: ${TABLE}.yards_per_carry ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}."year" ;;
  }

}
