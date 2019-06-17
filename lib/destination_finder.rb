require './/bin/environment.rb'

#CLI Controller
class DestinationFinder
  
  attr_accessor :location, :top_dest_list
  
  def call
    puts "Welcome to Weather Hacker!
Where are you today? Enter your current city and state here:" 
    input = gets.chomp
    @location = Location.new(input)
    puts "The temperature will be #{@location.weather.temp} tomorrow in #{@location.name} with a #{@location.weather.precip}% chance of precipitation."
    puts ""
    self.menu
  end
  
  def list_top_dest
    places = DestinationScraper.scrape_map(@location)
    @location.add_new_destinations(places)
    @top_dest_list = @location.top_destinations_score
  end  
  
  def menu
    #manage user navigation through the list.
    self.list_top_dest
    puts "Your top destinations are:" 
    @top_dest_list.each_with_index{|city, index| puts "#{index + 1}. #{city.name}: temperature-- #{city.weather.temp}, precipitation-- #{city.weather.precip}%."}
    puts ""
    puts "What looks interesting to you?"
    puts "Enter the number of a city on the list or type 'exit' to quit."
    index = gets.chomp
    until index == "exit"
      if index.to_i > 0 && index.to_i <= @top_dest_list.length
        puts "#{@top_dest_list[index.to_i - 1].name}, good choice!"
        puts "To explore #{@top_dest_list[index.to_i - 1].name} Visit #{WikiScraper.place_url(@top_dest_list[index.to_i - 1]).to_s.gsub("#<URI::HTTPS","")}" 
        puts ""
        puts "#{WikiScraper.scrape(@top_dest_list[index.to_i - 1])}..."
        #links to Wikipedia page for response
        puts ""
        puts "Do you want to explore more? Enter a city number or type 'exit' to quit."
        @top_dest_list.each_with_index{|city, index| puts "#{index + 1}. #{city.name}: temperature-- #{city.weather.temp}, precipitation-- #{city.weather.precip}%."}
        index = gets.chomp
      else
        "Please enter a number between 1 and #{@top_dest_list.length}."
        index = gets.chomp
      end  
    end
      puts "Happy Traveling!"
  end 
  
end  
