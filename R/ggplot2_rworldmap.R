# library(ggplot2)
# library(rworldmap)
#
# data("countryExData", envir=environment(), package="rworldmap")
# mymap <- joinCountryData2Map(countryExData,
#                              joinCode = "ISO3", nameJoinColumn = "ISO3V10", mapResolution = "low")
# mymap <- fortify(mymap)
# mypoints <- data.frame(lat = rep(55, 3), long = c(-145, -147, -149))
#
# ggplot() +
#   coord_map(xlim = c(-169, -121), ylim = c(45, 70)) +
#   geom_polygon(data = mymap, aes(long, lat, group = group),
#                color = "grey20", fill = "grey15", size = 0.3) +
#   # geom_point(data = mypoints, aes(x = long, y = lat), color = "blue3") +
#   xlim(-179, -90) +
#   ylim(30, 80)
