view: got_data {
  sql_table_name: coding_challenge.got_data ;;

  dimension: director {
    type: string
    sql: ${TABLE}.director ;;
  }

  dimension: episode_key {
    type: number
    sql: ${TABLE}.episode_key ;;
  }

  dimension: episode_number {
    type: number
    sql: ${TABLE}.episode_number ;;
  }

  dimension: imdb_description {
    type: string
    sql: ${TABLE}.imdb_description ;;
  }


  dimension: number_in_season {
    type: number
    sql: ${TABLE}.number_in_season ;;
  }

  dimension_group: original_air {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.original_air_date ;;
  }


  dimension: season {
    type: number
    sql: ${TABLE}.season ;;
  }

  dimension: writer {
    type: string
    sql: ${TABLE}.writer ;;
  }

  measure: average_imdb_rating {
    type: average
    sql: ${TABLE}.imdb_rating ;;
    view_label: "Measures"
  }

  measure: average_imdb_votes {
    type: average
    sql: ${TABLE}.imdb_votes ;;
    view_label: "Measures"
  }

  measure: average_notable_death_count {
    type: average
    sql: ${TABLE}.notable_death_count ;;
    view_label: "Measures"
  }

  measure: average_runtime_minutes {
    type: average
    sql: ${TABLE}.runtime_minutes ;;
    view_label: "Measures"
  }

  measure: average_us_viewers_millions {
    type: average
    sql: ${TABLE}.us_viewers_millions ;;
    view_label: "Measures"
  }

  measure: episode_count {
    type: count_distinct
    sql: ${TABLE}.episode_key ;;
    view_label: "Measures"
  }
}
