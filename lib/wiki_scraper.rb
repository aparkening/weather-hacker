require 'pry'
require 'open-uri'
require 'mechanize'

class WikiScraper
  
  attr_accessor :url
  
  def self.place_url(place)
    mechanize = Mechanize.new
    page = mechanize.get("https://www.wikipedia.org/")
    form = page.forms.first 
    form['search'] = "#{place.name}"
    page = form.submit
    page.uri
  end  
    
  def self.scrape(place)
    @url = "#{self.place_url(place)}"
    html = Nokogiri::HTML(open(@url))
    html.css("div#mw-content-text p").text[0..500].gsub("\n","")
  end
  
end  