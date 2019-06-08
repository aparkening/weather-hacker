
class Location 
  
  attr_accessor :name, :weather, :temperature, :precipitation

  
  def initialize(zipcode)
    @name = zipcode
    self.weather
  end  
  
    
  def top_destinations
    #gets list of potential destinations from @location
    #self.list_destinations.each{|destination|destination.weather}
    
    #calls the weather_score method to rank all destinations(class) in the list. 
    self.list_destinations.each{|destination|destination.weather_score}
    #puts list
  end  
  
  def list_destinations
    #scrapes www.freemaptools.com for list of destinations within 100 miles of self.
    list = ["Madison", "Traverse", "Louisville"]
    puts "Your destinations are:" 
    list.each_with_index{|city, index| puts "#{index + 1}. #{city}"}
    #generates an instance of the Destinations class for each destination. 
    list.collect{|city|Destination.new(city,self)}
  end
  
  def weather
    #calls weather_scaper to get temperature and precipitation for self.
    w = WeatherScraper.new(self).import
    puts "The tempurature in #{w[0].name} is #{w[1]} and the chance of rain is #{w[2]}%. "
  end  

end  