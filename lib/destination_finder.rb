#CLI Controller
class DestinationFinder
  
  attr_accessor :location
  
  def call
    puts "Welcome to Weather Hacker!
Where are you today?"
    puts ""
    puts "Enter your current city and state here:" 
    input = gets.chomp
    @location = Location.new(input)
     self.menu
  end
  
  def menu
    #manage user navigation through the list.
    @location.top_destinations
    puts "What looks interesting to you?"
    puts "Enter the number of a city on the list or exit to quit."
    input = gets.chomp
    case = input 
    when == 1 
      @location.dest_list[0]
      #links to Wikipedia page for response.
    when == exit
      puts "Happy travelling!"
  end 
  
end  