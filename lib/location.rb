require_relative './weather.rb'
require 'pry'
class Location 
  
  include Weather
  
  attr_accessor :name

  def initialize(zipcode)
    @name = zipcode
  end  
  
  def top_destinations
    #scrapes www.freemaptools.com for list of destinations within 100 miles of self.
    list = DestinationScraper.scrape_map(self)
    #binding.pry
    dest_list = list.collect{|city|Destination.new(city,self)}.sort_by{|dest|dest.weather_score}.reverse!
  end

end  