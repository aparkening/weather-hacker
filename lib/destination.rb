require_relative './weather.rb'

class Destination
  
  attr_accessor :name, :location, :weather, :temp

  def initialize(place, location)
    @name = place
    self.location = location
    self.weather = Weather.new(self)
  end 
  
  def learn_more
    WikiScraper.scrape(self)
  end

end  