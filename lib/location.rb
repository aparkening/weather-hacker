require_relative './weather.rb'
require 'pry'
class Location 

  attr_accessor :name, :weather, :destinations

  def initialize(city_state)
    @name = city_state
    self.weather = Weather.new(self)
    @destinations = []
  end  
  
  def add_new_destinations(array)
    array.each {|place| @destinations << Destination.new(place,self)}
    @destinations
  end  
  
  def top_destinations_score
    dest_list = @destinations.sort_by{|dest|dest.weather.weather_score}.reverse!
  end

end  
