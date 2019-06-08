require_relative './weather.rb'

class Destination
  
  include Weather 
  
  attr_accessor :name, :location, :weather, :temperature, :precipitation

  def initialize(name, location)
    @name = name
    @location = location
    #puts "You have created #{self.name} destination for #{self.location.name}!"
  end 
  
  #def weather
    #calls weather_scaper to get temperature and precipitation for self.
    #w = WeatherScraper.new(self).import
    #puts "The tempurature in #{w[0].name} is #{w[1]} and the chance of rain is #{w[2]}%."
    #w
  #end  
  
  #def weather_score 
    #score = self.weather[1] - self.weather[2]
    #puts "The weather score for #{self.name} is #{score}."
    #creates a weather index score using temperature and precipitation from #weather.
  #end  
end  