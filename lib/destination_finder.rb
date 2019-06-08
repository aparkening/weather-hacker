#CLI Controller
class DestinationFinder
  
  def call
    puts "Welcome to Weather Hacker! Where are you today?"
    puts "Enter your current zipcode here:"
    #gets zipcode input
    #if not valid zipcode 
      #puts "Please enter a valid zipcode."
      #gets zipcode input
    #else
     self.top_destinations(gets.chomp)   
    #end  
  end
  
  def top_destinations(zipcode)
    puts "You should go to Madison, WI!"
    #gets list of potential destinations from location(zipcode)
    #ranks all destinations(class) within 300 miles of zipcode by the #weather.
  end  
  
end  