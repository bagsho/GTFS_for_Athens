library(leaflet)

leaflet() %>%
  addProviderTiles(providers$CartoDB.Positron) %>%
  addPolylines(
    lng=final_shapes %>% 
      filter(shape_id==54) %>% 
      select(shape_pt_lon) %>%      
      unlist() %>% 
      as.numeric(),
    lat=final_shapes %>% 
      filter(shape_id==54) %>%
      select(shape_pt_lat) %>%      
      unlist() %>% 
      as.numeric(),
    color = "red",
    weight = 2, 
    opacity = 0.6) %>% 
  addCircleMarkers(
    lng=final_stop_times %>% 
      left_join(final_stops,by="stop_id") %>% 
      filter(trip_id=="L3_MonFri_Start") %>%
      select(stop_lon) %>% 
      unlist() %>% 
      as.numeric(),
    lat=final_stop_times %>% 
      left_join(final_stops,by="stop_id") %>% 
      filter(trip_id=="L3_MonFri_Start") %>% 
      select(stop_lat) %>%
      unlist() %>% 
      as.numeric(),
    color="black",
    radius =1)



# for all lines. Note that this section couldn't be executed perfectly.

shape_trip_table<-tibble(shape_id=c(53,54,55,56,57,76,78),first_trip_id=c("L2_MonFri","L3_MonFri","L4_MonFri","L5_MonFri","L6_MonFri","L7n_MonFri","L7a_MonFri"))
# shape_trip_table<-tibble(shape_id=c(53),first_trip_id=c("L2_MonFri"))
# shape_trip_table %>% plot_routes_with_stops (final_shapes, final_stop_times, final_stops)
shape_trip_table %>% map(plot_routes_with_stops,final_shapes, final_stop_times, final_stops)

plot_routes_with_stops = function(shape_trip_table,final_shapes, final_stop_times, final_stops) {
  
  leaflet() %>%
    addProviderTiles(providers$CartoDB.Positron) %>%
    addPolylines(
      lng=final_shapes %>% 
        filter(shape_id==shape_trip_table$shape_id) %>% 
        select(shape_pt_lon) %>%      
        unlist() %>% 
        as.numeric(),
      lat=final_shapes %>% 
        filter(shape_id==shape_trip_table$shape_id) %>%
        select(shape_pt_lat) %>%      
        unlist() %>% 
        as.numeric(),
      color = "red",
      weight = 2, 
      opacity = 0.6) %>% 
    addCircleMarkers(
      lng=final_stop_times %>% 
        left_join(final_stops,by="stop_id") %>% 
        filter(trip_id==shape_trip_table$first_trip_id) %>%
        select(stop_lon) %>% 
        unlist() %>% 
        as.numeric(),
      lat=final_stop_times %>% 
        left_join(final_stops,by="stop_id") %>% 
        filter(trip_id==shape_trip_table$first_trip_id) %>% 
        select(stop_lat) %>%
        unlist() %>% 
        as.numeric(),
      color="black",
      radius =1)
  
}


# morning trips
leaflet() %>%
  addProviderTiles(providers$CartoDB.Positron) %>%
  addPolylines(
    lng=final_shapes %>% 
      filter(shape_id==54) %>% 
      select(shape_pt_lon) %>%      
      unlist() %>% 
      as.numeric(),
    lat=final_shapes %>% 
      filter(shape_id==54) %>%
      select(shape_pt_lat) %>%      
      unlist() %>% 
      as.numeric(),
    color = "green",
    weight = 2, 
    opacity = 0.2) %>% 
  addPolylines(
    lng=final_stop_times %>% 
      left_join(final_stops,by="stop_id") %>% 
      filter(trip_id=="L3_MonFri_Start") %>%
      select(stop_lon) %>% 
      unlist() %>% 
      as.numeric(),
    lat=final_stop_times %>% 
      left_join(final_stops,by="stop_id") %>% 
      filter(trip_id=="L3_MonFri_Start") %>% 
      select(stop_lat) %>%
      unlist() %>% 
      as.numeric(),
    color = "red",
    weight = 2, 
    opacity = 0.6) %>% 
  addCircleMarkers(
    lng=final_stop_times %>% 
      left_join(final_stops,by="stop_id") %>% 
      filter(trip_id=="L3_MonFri_Start") %>%
      select(stop_lon) %>% 
      unlist() %>% 
      as.numeric(),
    lat=final_stop_times %>% 
      left_join(final_stops,by="stop_id") %>% 
      filter(trip_id=="L3_MonFri_Start") %>% 
      select(stop_lat) %>%
      unlist() %>% 
      as.numeric(),
    color="black",
    radius =1)




