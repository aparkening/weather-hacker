require_relative './weather.rb'

class Destination
  
  include Weather 
  
  attr_accessor :name, :location, :weather, :temperature, :precipitation

  def initialize(name, location)
    @name = name
    @location = location
    #puts "You have created #{self.name} destination for #{self.location.name}!"
  end 
  
  def weather
    #calls weather_scaper to get temperature and precipitation for self.
    w = WeatherScraper.new(self).import
  end  
  
  def weather_score 
    #creates a weather index score using temperature and precipitation from #weather.
    score = self.weather[1] - self.weather[2]
  end  
end  