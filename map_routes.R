library(ggthemes)


#read GTFS data
shapes <- read.csv("data/gtfs_20220603/shapes.txt")

shapes %>%
  filter(shape_id %in% c(101,102,103)) %>% 
  ggplot()+
    geom_path( 
              aes(shape_pt_lon, shape_pt_lat, col = as.character(shape_id)), 
              size = .1, 
              alpha = .5) +
    coord_equal() + 
    theme_map()