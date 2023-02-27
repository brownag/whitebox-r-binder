library(whitebox)
library(terra)

if (!wbt_init())
  install_whitebox()

wbt_breach_depressions(sample_dem_data(), "dem_breach.tif")
wbt_slope("dem_breach.tif", "slope.tif")
wbt_adaptive_filter("dem_breach.tif", "adfilt.tif")

x <- rast(c(sample_dem_data(), "dem_breach.tif", "slope.tif", "adfilt.tif"))
# use PROJ.4 CRS
crs(x) <- "+init=epsg:32618"

# do some calculation on result
x[[2]] <- x[[1]] - x[[2]]
x[[4]] <- x[[1]] - x[[4]]

# inspect terra plot
plot(x)

# use ggplot2+tidyterra
library(ggplot2)
library(tidyterra)

ggplot() + 
  geom_spatraster(data = x[[3]])
