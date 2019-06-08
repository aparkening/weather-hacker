
class Location 
  
  attr_accessor :name, :weather, :temperature, :precipitation
  
  def initialize(zipcode)
    @name = zipcode
    puts "Your location is #{@name}!"
  end  
  
  def list_destinations
    #scrapes www.freemaptools.com for list of destinations within 100 miles of self.
    list = ["Madison", "Traverse", "Louisville"]
    puts "Your destinations are:" 
    list.each_with_index{|city, index| puts "#{index + 1}. #{city}"}
    #generates an instance of the Destinations class for each destination. 
    list.each{|city|Destination.new(city,self)}
  end
  
  def weather 
    #uses weather_scaper to determine temperature and precipitation for @zipcode.
  end  
end  