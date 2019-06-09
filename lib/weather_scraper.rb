#require 'pry'
class WeatherScraper
  
  attr_accessor :destination, :weather_hash

  @html = []
  
  def initialize(destination)
    @destination = destination
    #scrapes Accuweather for temp and precipitation for destination. 
    @html = [@destination,@destination.name.length*10,@destination.name.length*1.5]
  end  
  
  def import
    #binding.pry
    #assigns temp and precip to destinations.
    @html
  end

end  