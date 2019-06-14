require_relative './weather.rb'

class Destination
  
  include Weather 
  
  attr_accessor :name, :location 

  def initialize(name, location)
    @name = name
    @location = location
    #puts "You have created #{self.name} destination for #{self.location.name}!"
  end 

end  