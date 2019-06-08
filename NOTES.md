#weather-hacker 
a command line interface that takes in a location and returns a list of destinations within 100 miles with the best weather.

Welcome

gets zipcode input from user

uses zipcode to generate location

uses location to generate potential destinations
    destinations belong to a location
    a location has many destinations
    
destinations have weather 
    weather is a hash of tomorrow's temperature and precipitation. (Should I use classes for these? Maybe a weather class...)
    
    weather has temperature and precipitation
    
destinations have a weather score using weather to combine temperature and precipitation into an index.
    
destination_finder generates a list of destinations ranked by the weather score 

asks the user to choose a destination

links to destination wikipedia page
  

