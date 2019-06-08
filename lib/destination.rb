class Destination
  
  attr_accessor :zipcode, :location, :weather, :temperature, :precipitation
  
  def initialize(zipcode, location)
    @zipcode = zipcode
    @location = location
  end 
  
  def weather_score 
    #creates a weather index score using temperature and precipitation.
    #imports temperature and precipitation using #weather_scraper.
  end  
end  