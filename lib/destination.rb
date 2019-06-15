require_relative './weather.rb'

class Destination
  
  attr_accessor :name, :location, :weather

  def initialize(name, location)
    @name = name
    self.location = location
    self.weather = Weather.new(self)
    #puts "You have created #{self.name} destination for #{self.location.name}!"
  end 

end  