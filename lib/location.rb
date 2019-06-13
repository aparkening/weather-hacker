require_relative './weather.rb'
require 'pry'
class Location 
  
  include Weather
  
  attr_accessor :name, :weather, :temperature, :precipitation
  attr_reader :dest_list

  def initialize(zipcode)
    @name = zipcode
    #DestinationScraper.scrape_map(self)
  end  
  
  def top_destinations
    #scrapes www.freemaptools.com for list of destinations within 100 miles of self.
    list = DestinationScraper.scrape_map
    dest_list = list.collect{|city|Destination.new(city,self)}.sort_by{|dest|dest.weather_score}.reverse!
  end
  
  def weather
    #calls weather_scaper to get temperature and precipitation for self.
    w = WeatherScraper.scrape_weather(self)
    #binding.pry
  end  

end  