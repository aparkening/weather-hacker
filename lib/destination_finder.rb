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
    index = gets.chomp
    until index == "exit"
      index = index.to_i
      @location.destination_find_by_index(index - 1)
      #links to Wikipedia page for response.
      puts "Do you want to explore more? Enter a city number or type 'exit' to quit."
      @location.top_destinations
    end
      puts "Happy traveling!"
  end 
  
end  