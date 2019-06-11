require 'pry'
require 'open-uri'

class DestinationScraper
  url = "https://www.travelmath.com/cities-near/"
  
  def self.scrape_map
    city_link_array = []
    city_array =[]
    #binding.pry
    #url = "https://.www.travelmath.com/cities-near/#{location.name.split(" ")[0]}+#{location.name.split(" ")[1]}+#{location.name.split(" ")[2]}"
    #binding.pry
    url = "https://www.travelmath.com/cities-near/Grand+Rapids,+MI"
    html = Nokogiri::HTML(open(url))
    #binding.pry
    html.css("ul.related li a").each do |city|
      city_link_array<< city.attribute("href").value
      #binding.pry
    end  
    city_link_array.each_with_index do |a,i|
      if i%2 != 0
        city_array << a
        #binding.pry
      end 
    end  
    city_array = city_array.collect do |city|
      city.match(/[A-Z][a-z]+,\+[A-Z]+/).to_s.gsub(/\+/," ")
      #binding.pry
    end  
    city_array = city_array[0..9]
    #binding.pry
  end  
  
end  