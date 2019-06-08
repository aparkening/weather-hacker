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
     self.menu
    #puts "Enjoy your trip!"
  end
  
  def top_destinations
    #gets list of potential destinations from @location
    @location.list_destinations
    
    #calls the weather_score method to rank all destinations(class) in the list. 
    
    #puts list
  end  
  
  def menu
    #manage user navigation through the list.
    #puts "What looks interesting to you?"
    #links to Wikipedia page for response.
  end 
  
end  