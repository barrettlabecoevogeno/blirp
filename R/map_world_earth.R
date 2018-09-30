# pdf("~/Desktop/map_world.pdf")
# library("ggmap")
# library(maptools)
# library(maps)
# # map("world",
#     fill=TRUE,
#     col="darkseagreen",
#     bg="lightsteelblue1",
#     ylim=c(-60, 90),
#     mar=c(0,0,0,0),
#     resolution = 0)
# dev.off()



#Using GGPLOT, plot the Base World Map
# mp <- NULL
# mapWorld <- borders("world",
#                     colour="darkseagreen",
#                     fill="darkseagreen") # create a layer of borders
# mp <- ggplot() +   mapWorld

# pdf("~/Desktop/map_world.pdf")

# my.map <- mp +  coord_equal() +
#   theme(plot.subtitle = element_text(vjust = 1),
#     plot.caption = element_text(vjust = 1),
#     plot.margin = margin(0, 0, 0, 0, "cm"),
#     axis.ticks = element_line(linetype = "blank"),
#     panel.grid.major = element_line(colour = NA,
#         linetype = "blank"), panel.grid.minor = element_line(colour = NA,
#         linetype = "blank"), axis.title = element_text(colour = NA),
#     axis.text = element_text(colour = NA),
#     plot.title = element_text(colour = NA),
#     panel.background = element_rect(fill = "lightsteelblue1"),
#     plot.background = element_rect(colour = NA))
# dev.off()
