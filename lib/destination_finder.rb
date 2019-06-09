#CLI Controller
class DestinationFinder
  
  attr_accessor :location
  
  def call
    puts "Welcome to Weather Hacker! Where are you today?"
    puts "Enter your current city and state here:" 
    input - gets.chomp
    @location = Location.new(input)
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