  randomplot <- function(x, y, u){
  url ="https://envirocar.org/api/stable/tracks/56d9dc80e4b0b5e23789124a"

require(rgdal)
require(ggplot2)
importEnviroCar = function(file) {
    require(rjson)  # fromJSON
    require(maptools)  # spCbind
    # read data as spatial object:
    layer = readOGR(file, layer = "OGRGeoJSON")
    # convert time from text to POSIXct:
    layer$time = as.POSIXct(layer$time, format = "%Y-%m-%dT%H:%M:%SZ")
    # the third column is JSON, we want it in a table (data.frame) form: 1. form
    # a list of lists
    l1 = lapply(as.character(layer[[3]]), fromJSON)
    # 2. parse the $value elements in the sublist:
    l2 = lapply(l1, function(x) as.data.frame(lapply(x, function(X) X$value)))
    # bind these value elements, row by row, together
    ret = do.call(rbind, l2)
    # read the units:
    units = lapply(l1[1], function(x) as.data.frame(lapply(x, function(X) X$unit)))
    # add a units attribute to layer
    layer[[3]] = NULL
    # add the table as attributes to the spatial object
    if (length(layer) == nrow(ret)) {
        layer = spCbind(layer, ret)
        attr(layer, "units") = units[[1]]
        layer
    } else NULL
}
sp = importEnviroCar(url)
data1=sp[,x]
data2=sp[,y]
d1=data1[[1]]
d2=data2[[1]]
qplot(d1,d2,margins=TRUE,xlab=x,ylab=y)
  #return nothing
#invisible();
}
