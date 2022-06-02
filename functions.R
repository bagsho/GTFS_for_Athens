add_frequency_records = function(sample_GTFS, date, observation, graph_title) {
  
  sample_GTFS %>%
    pluck("frequencies") %>%
    slice(0) %>%
    add_row(
      trip_id = "L5_MonFri",
      start_time = hms::hms(hours = 7,minutes = 0,seconds = 0),
      end_time = hms::hms(hours = 8,minutes = 59,seconds = 59),
      headway_secs=3600
    ) %>%
    add_row(
      trip_id = "L5_MonFri",
      start_time = hms::hms(hours = 16,minutes = 0,seconds = 0),
      end_time = hms::hms(hours = 18,minutes = 0,seconds = 0),
      headway_secs=3600
    ) %>%
    add_row(
      trip_id = "L5_MonSat",
      start_time = hms::hms(hours = 9,minutes = 0,seconds = 0),
      end_time = hms::hms(hours = 15,minutes = 59,seconds = 59),
      headway_secs=3600
    )
  
}


 