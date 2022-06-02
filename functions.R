add_frequency_records = function(sample_GTFS, date, observation, graph_title) {
  
  sample_GTFS %>%
    pluck("frequencies") %>%
    slice(0) %>%
    
    ############### Line 2
    
    add_row(
      trip_id = "L2_MonFri",
      start_time = hms::hms(hours = 7,minutes = 30,seconds = 0),
      end_time = hms::hms(hours = 9,minutes = 29,seconds = 59),
      headway_secs=3600
    ) %>% 
    
    add_row(
      trip_id = "L2_MonSat",
      start_time = hms::hms(hours = 9,minutes = 30,seconds = 0),
      end_time = hms::hms(hours = 17,minutes = 29,seconds = 59),
      headway_secs=3600
    ) %>%
    
    add_row(
      trip_id = "L2_MonFri",
      start_time = hms::hms(hours = 17,minutes = 30,seconds = 0),
      end_time = hms::hms(hours = 18,minutes = 30,seconds = 0),
      headway_secs=3600
    ) %>%
    
    ############### Line 3  
  
    add_row(
      trip_id = "L3_MonFri",
      start_time = hms::hms(hours = 7,minutes = 0,seconds = 0),
      end_time = hms::hms(hours = 8,minutes = 59,seconds = 59),
      headway_secs=3600
    ) %>% 
  
    add_row(
      trip_id = "L3_MonSat",
      start_time = hms::hms(hours = 9,minutes = 0,seconds = 0),
      end_time = hms::hms(hours = 16,minutes = 59,seconds = 59),
      headway_secs=3600
    ) %>%
    
    add_row(
      trip_id = "L3_MonFri",
      start_time = hms::hms(hours = 17,minutes = 0,seconds = 0),
      end_time = hms::hms(hours = 18,minutes = 59,seconds = 59),
      headway_secs=3600
    ) %>%
    
    add_row(
      trip_id = "L3_MonSat",
      start_time = hms::hms(hours = 19,minutes = 0,seconds = 0),
      end_time = hms::hms(hours = 21,minutes = 0,seconds = 0),
      headway_secs=3600
    ) %>%
    
    ############### Line 4 
    
    add_row(
      trip_id = "L4_MonFri",
      start_time = hms::hms(hours = 7,minutes = 45,seconds = 0),
      end_time = hms::hms(hours = 8,minutes = 44,seconds = 59),
      headway_secs=3600
    ) %>% 
    
    add_row(
      trip_id = "L4_MonSat",
      start_time = hms::hms(hours = 8,minutes = 45,seconds = 0),
      end_time = hms::hms(hours = 20,minutes = 45,seconds = 0),
      headway_secs=3600
    ) %>%
  
    ############### Line 5
    
    add_row(
      trip_id = "L5_MonFri",
      start_time = hms::hms(hours = 7,minutes = 32,seconds = 0),
      end_time = hms::hms(hours = 9,minutes = 31,seconds = 59),
      headway_secs=3600
    ) %>% 
    
    add_row(
      trip_id = "L5_MonSat",
      start_time = hms::hms(hours = 9,minutes = 32,seconds = 0),
      end_time = hms::hms(hours = 17,minutes = 31,seconds = 59),
      headway_secs=3600
    ) %>%
    
    add_row(
      trip_id = "L5_MonFri",
      start_time = hms::hms(hours = 17,minutes = 32,seconds = 0),
      end_time = hms::hms(hours = 18,minutes = 32,seconds = 0),
      headway_secs=3600
    ) %>%
  
    ############### Line 6 
    
    add_row(
      trip_id = "L6_MonFri",
      start_time = hms::hms(hours = 7,minutes = 2,seconds = 0),
      end_time = hms::hms(hours = 9,minutes = 1,seconds = 59),
      headway_secs=3600
    ) %>% 
    
    add_row(
      trip_id = "L6_MonSat",
      start_time = hms::hms(hours = 9,minutes = 2,seconds = 0),
      end_time = hms::hms(hours = 17,minutes = 1,seconds = 59),
      headway_secs=3600
    ) %>%
    
    add_row(
      trip_id = "L6_MonFri",
      start_time = hms::hms(hours = 17,minutes = 2,seconds = 0),
      end_time = hms::hms(hours = 18,minutes = 2,seconds = 0),
      headway_secs=3600
    ) %>%
  
    ############### Line 7a
    
    add_row(
      trip_id = "L7a_MonFri",
      start_time = hms::hms(hours = 7,minutes = 45,seconds = 0),
      end_time = hms::hms(hours = 9,minutes = 44,seconds = 59),
      headway_secs=7200
    ) %>% 
    
    add_row(
      trip_id = "L7a_MonSat",
      start_time = hms::hms(hours = 9,minutes = 45,seconds = 0),
      end_time = hms::hms(hours = 17,minutes = 44,seconds = 59),
      headway_secs=7200
    ) %>%
    
    add_row(
      trip_id = "L7a_MonFri",
      start_time = hms::hms(hours = 17,minutes = 45,seconds = 0),
      end_time = hms::hms(hours = 18,minutes = 40,seconds = 0),
      headway_secs=7200
    ) %>% 
    
    ############### Line 7n
    
    add_row(
      trip_id = "L7n_MonFri",
      start_time = hms::hms(hours = 6,minutes = 45,seconds = 0),
      end_time = hms::hms(hours = 8,minutes = 44,seconds = 59),
      headway_secs=7200
    ) %>% 
    
    add_row(
      trip_id = "L7n_MonSat",
      start_time = hms::hms(hours = 8,minutes = 45,seconds = 0),
      end_time = hms::hms(hours = 16,minutes = 44,seconds = 59),
      headway_secs=7200
    ) %>%
    
    add_row(
      trip_id = "L7n_MonFri",
      start_time = hms::hms(hours = 16,minutes = 45,seconds = 0),
      end_time = hms::hms(hours = 17,minutes = 45,seconds = 0),
      headway_secs=7200
    ) 
}


 