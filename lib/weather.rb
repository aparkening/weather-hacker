require_relative './weather_scraper.rb'
class Weather
  
  attr_accessor :place, :temp, :precip
  
  def initialize(place)
    @place = place
    @w = WeatherScraper.scrape_weather(place)
    @temp = @w[0]
    @precip = @w[1]
  end  
  
  
  def weather_score 
    #binding.pry
    #creates a weather index score using temperature and precipitation from #weather.
    score = self.temp - self.precip
  end  
  
  def weather_message
    #w = self.weather
    #binding.pry
    #puts "The tempurature in #{w[0].name} is #{w[1]} and the chance of rain is #{w[2]}%. "
  end  
  
  
  
end  