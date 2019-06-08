class WeatherScraper
  
  attr_accessor :destination, :weather_hash
  
  weather_hash = {}
  @html = []
  
  def initialize(destination)
    @destination = destination
    #scrapes Accuweather for temp and precipitation for destination. 
    @html = [@destination,75,20]
  end  
  
  def import
    #assigns temp and precip to destinations.
    weather_hash = {}
    weather_hash[:city] = @html[0]
    weather_hash[:city][:temp] = @html[1]
    weather_hash[:city][:precip] = @html[2]
    
    weather_hash[:city]
  end  
end  