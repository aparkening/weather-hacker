require_relative './weather.rb'
require 'pry'
class Location 
  
  include Weather
  
  attr_accessor :name, :weather, :temperature, :precipitation
  attr_reader :dest_list

  def initialize(zipcode)
    @name = zipcode
  end  
  
  def top_destinations
    #scrapes www.freemaptools.com for list of destinations within 100 miles of self.
    list = ["Madison", "Traverse", "Louisville"]
    dest_list = list.collect{|city|Destination.new(city,self)}.sort_by{|dest|dest.weather_score}.reverse!
  end
  
  #def weather
    #calls weather_scaper to get temperature and precipitation for self.
    #w = WeatherScraper.new(self).import
    #binding.pry
  #end  

end  