class Location 
  
  attr_accessor :zipcode, :weather, :temperature, :precipitation
  
  def initialize(zipcode)
    @zipcode = zipcode
  end  
  
  def list_destinations
    #scrapes www.freemaptools.com for list of zipcodes within 100 miles of self.
  end
  
  def weather 
    #uses weather_scaper to determine temperature and precipitation for @zipcode.
  end  
end  