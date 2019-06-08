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
     self.menu
  end
  
  def menu
    @location.top_destinations
    #manage user navigation through the list.
    #puts "What looks interesting to you?"
    #links to Wikipedia page for response.
    #puts "Enjoy your trip!"
  end 
  
end  