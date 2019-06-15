
module Weather
  
  #weather = WeatherScraper.scrape_weather(self)
  
  def weather
    WeatherScraper.scrape_weather(self)
  end  
  
  def weather_score 
    #creates a weather index score using temperature and precipitation from #weather.
    score = self.weather[0] - self.weather[1]
  end  
  
  def weather_message
    #w = self.weather
    #binding.pry
    #puts "The tempurature in #{w[0].name} is #{w[1]} and the chance of rain is #{w[2]}%. "
  end  
  
  
  
end  