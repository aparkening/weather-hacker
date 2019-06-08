module Weather
  
  def weather
    #calls weather_scaper to get temperature and precipitation for self.
    w = WeatherScraper.new(self).import
  end  
  
  def weather_score 
    #creates a weather index score using temperature and precipitation from #weather.
    score = self.weather[1] - self.weather[2]
  end  
  
end  