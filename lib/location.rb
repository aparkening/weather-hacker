require_relative './weather.rb'
class Location 
  
  include Weather
  
  attr_accessor :name, :weather, :temperature, :precipitation
  attr_reader :dest_list

  dest_list =[]
  
  def initialize(zipcode)
    @name = zipcode
    w = self.weather
    puts "The tempurature in #{w[0].name} is #{w[1]} and the chance of rain is #{w[2]}%. "
  end  
  
  
  def top_destinations
    #scrapes www.freemaptools.com for list of destinations within 100 miles of self.
    list = ["Madison", "Traverse", "Louisville"]
    dest_list = list.collect{|city|Destination.new(city,self)}.sort_by{|dest|dest.weather_score}.reverse!
  end
  
  def weather
    #calls weather_scaper to get temperature and precipitation for self.
    w = WeatherScraper.new(self).import
  end  

end  