class WeatherScraper
  
  def initializes(destination)
    #scrapes Accuweather for temp and precipitation for destination. 
    html = [destination,75,20]
  end  
  
  def import
    #assigns temp and precip to destinations.
    weather_hash[:city] = html.split(",")[0]
    weather_hash[:city][:temp] = html.split(",")[1]
    weather_hash[:city][:precip] = html.split(",")[2]
    
    weather_hash[:city]
  end  
end  