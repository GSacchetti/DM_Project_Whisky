library(sp)  
library(leaflet)
library(ggmap)


coords <- as.data.frame(cbind(lon=df1$lon,lat=df1$lat))

coordinates(coords) <- ~lon+lat
leaflet(coords) %>% addMarkers() %>% addTiles()