require_relative './weather.rb'

class Destination
  
  attr_accessor :name, :location, :weather, :temp

  def initialize(name, location)
    @name = name
    self.location = location
    self.weather = Weather.new(self)
  end 

end  