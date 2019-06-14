require './/bin/environment.rb'

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
    puts "The temperature will be #{@location.weather[0]} tomorrow in #{@location.name} with a #{@location.weather[1]}% chance of precipitation."
    self.menu
  end
  
  def menu
    #manage user navigation through the list.
    puts "Your top destinations are:" 
    list = @location.top_destinations
    list.each_with_index{|city, index| puts "#{index + 1}. #{city.name}: temperature-- #{city.weather[0]}, precipitation-- #{city.weather[1]}%."}
    puts "What looks interesting to you?"
    puts "Enter the number of a city on the list or typy 'exit' to quit."
    index = gets.chomp
    until index == "exit"
      puts "#{list[index.to_i - 1].name}"
      #links to Wikipedia page for response.
      puts "Do you want to explore more? Enter a city number or type 'exit' to quit."
      list.each_with_index{|city, index| puts "#{index + 1}. #{city.name}: temperature-- #{city.weather[0]}, precipitation-- #{city.weather[1]}%."}
      index = gets.chomp
    end
      puts "Happy Traveling!"
  end 
  
end  