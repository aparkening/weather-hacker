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
    weather_hash = @html
  end

end  