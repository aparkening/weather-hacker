
module Weather
  
  def weather
    #calls weather_scaper to get temperature and precipitation for self.
    binding.pry
    w = WeatherScraper.new(self).import
    binding.pry
  end  
  
  def weather_score 
    #creates a weather index score using temperature and precipitation from #weather.
    score = self.weather[1] - self.weather[2]
  end  
  
  def weather_message
    w = self.weather
    #binding.pry
    puts "The tempurature in #{w[0].name} is #{w[1]} and the chance of rain is #{w[2]}%. "
  end  
  
  
  
end  