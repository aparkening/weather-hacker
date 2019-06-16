require_relative './weather_scraper.rb'
class Weather
  
  attr_accessor :place, :temp, :precip
  
  def initialize(place)
    @place = place
    @w = WeatherScraper.scrape_weather(place)
    @temp = @w[:temp]
    @precip = @w[:precip]
  end  
  
  
  def weather_score 
    #creates a weather index score using temperature and precipitation from #weather.
    score = self.temp - self.precip
  end  
  
  
end  