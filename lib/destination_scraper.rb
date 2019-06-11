require 'pry'
require 'open-uri'

class DestinationScraper
  
  def self.scrape_map(url)
     html = Nokogiri::HTML(open(url))
     html.css("")
  end  
  
end  