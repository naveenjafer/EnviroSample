EnviroSample App
====================
  
This is a simple application built with openCPU, it aims to serve as a starter for anyone developing applications to analyze EnvirCar track data. The application is currently in progress and is expected to be completed soon. It takes track data from https://envirocar.org/api/stable/tracks/56d9dc80e4b0b5e23789124a and displays the tracks path using leaflet and also displays simple statistics of the data calculated in JS. The user is then given an option to plot a simple 2 D graph with any of the attributes that have been generated from the particular track set. The legend to the map has not been added yet
`0-40` - Blue
`40-80` - Yellow
`80-120` - Green
`120-160` - Orange
`160-200` - Red 

The R function simple returns a map of the two Axes taht have been chosen, these can be exported to either png,svg,PDF formats.

Use locally
-----------

To run the app in your local R session:

    #install app
    library(devtools)
    install_github("naveenjafer/EnviroSample")
    
    #load in opencpu
    library(opencpu)
    opencpu$browse("/library/EnviroSample/www")

Future Work
-----------
1) To make the Homepage Dependant on Angular JS. To come up with better and more functionality from openCPU. Possible integrations with google charts to present more beautiful and interactive maps as compared to OpenCPU maps. 
2) To add the legend to the map.
3) To implement interactive charts by using a suitable charts API (Mostly Google Charts API)
4) To extract more useful insights from track analysis in R.

