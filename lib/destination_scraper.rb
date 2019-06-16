require 'pry'
require 'open-uri'

class DestinationScraper
  
  def self.map(location)
    mechanize = Mechanize.new
    page = mechanize.get("https://www.travelmath.com/")
    link = page.link_with(text:"Cities")
    page = link.click
    link = page.link_with(text: "major cities")
    page = link.click
    form = page.form('calculator')
    form.from = "#{location.name}"
    form.to = "#{location.name}"
    page = form.submit
    page.uri
    
  end  
  
  def self.scrape_map(location)
    city_link_array = []
    city_array =[]
    url = self.map(location)
    html = Nokogiri::HTML(open(url))
    html.css("ul.related li a").each do |city|
      city_link_array<< city.attribute("href").value
    end  
    city_link_array.each_with_index do |a,i|
      if i%2 != 0
        city_array << a
      end 
    end  
    city_array = city_array.collect do |city|
      city = city.gsub(/\/[a-z]+\//, "")
      city = city.gsub("+", " ")
    end  
    city_array = city_array[0..4]
  end  


end  