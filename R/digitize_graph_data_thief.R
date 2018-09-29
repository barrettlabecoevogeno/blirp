install.packages("digitize")
library(digitize)
# dev.off()
# click on the x axis (lowest an highest known value)
# then the y axis (lowest to highest values)

# Import image here:
# cal = ReadAndCal("~/Desktop/plot_zoom_png.png" )

# You can use the function "digitize" but I'm going
# to show another functino
# data.1 = digitize(cal,col ="red")

# Here, after running this function, click on the points
data.1 = DigitData(col ="red")
# Calibrate the x and y axes
data.2 = Calibrate(data.1,cal,
                   x1 = 1, x2 = 5,
                   y1 = 7, y2 = 9.5)
# Show the data!
data.2

# Alternative: web base digitization
# http://arohatgi.info/WebPlotDigitizer/app/
