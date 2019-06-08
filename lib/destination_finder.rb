#CLI Controller
class DestinationFinder
  
  attr_accessor :location
  
  def call
    puts "Welcome to Weather Hacker! Where are you today?"
    puts "Enter your current zipcode here:" 
    @location = Location.new(gets.chomp)
    #gets zipcode input
    #if not valid zipcode 
      #puts "Please enter a valid zipcode."
      #gets zipcode input
    #else
     self.top_destinations   
    #end  
  end
  
  def top_destinations
    #gets list of potential destinations from location(zipcode)
    @location.list_destinations
    
    #ranks all destinations(class) within 300 miles of zipcode by the #weather.
  end  
  
end  