class Destination
  
  attr_accessor :name, :location, :weather, :temperature, :precipitation
  
  def initialize(name, location)
    @name = name
    @location = location
    puts "You have created #{self.name} destination for #{self.location.name}!"
  end 
  
  def weather_score 
    #creates a weather index score using temperature and precipitation.
    #imports temperature and precipitation using #weather_scraper.
  end  
end  