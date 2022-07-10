


additional_shapes<-
  current_GTFS[["shapes"]] %>% 
  filter(shape_id %in% c("58","60","88")) %>% 
  mutate(shape_id=as.integer(shape_id))


stops <- current_GTFS[["stops"]] %>% mutate(new=paste0(stop_id,"_",stop_name))

data<-additional_shapes %>% filter(shape_id==60)

other_line<-gtfs[["shapes"]] %>% filter(shape_id==78)

leaflet() %>%
  addProviderTiles(providers$CartoDB.Positron) %>%
  addPolylines(data = data, data$shape_pt_lon, data$shape_pt_lat, color = "black") %>%
  #addPolylines(data = other_line, other_line$shape_pt_lon, other_line$shape_pt_lat, color = "red") %>%
  addCircleMarkers(data = stops, 
                   stops$stop_lon, 
                   stops$stop_lat, 
                   radius = 1, 
                   popup = stops$new)