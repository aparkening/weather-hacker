require 'pry'
require 'open-uri'

class WeatherScraper
  
  def self.scrape_weather
    url = "https://www.accuweather.com/en/us/grand-rapids-mi/49503/weather-forecast/329374"
    html = Nokogiri::HTML(open(url))
  end
  
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