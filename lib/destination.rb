require_relative './weather.rb'

class Destination
  
  attr_accessor :name, :location, :weather

  def initialize(place, location)
    @name = place
    self.location = location
    self.weather = Weather.new(self)
  end 

end  