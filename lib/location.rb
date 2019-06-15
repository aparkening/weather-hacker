require_relative './weather.rb'
require 'pry'
class Location 

  attr_accessor :name, :weather

  def initialize(city_state)
    @name = city_state
    self.weather = Weather.new(self)
    #binding.pry
  end  
  
  def top_destinations
    #scrapes www.travelmath.com for list of destinations within 300 miles of self.
    list = DestinationScraper.scrape_map(self)
    dest_list = list.collect{|city|Destination.new(city,self)}.sort_by{|dest|dest.weather.weather_score}.reverse!
  end

end  