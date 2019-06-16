require 'pry'
require 'open-uri'
require 'mechanize'
require_relative './weather.rb'

class WeatherScraper
  
  attr_accessor :temp, :weather, :precip
  
  def self.weather_url(place)
    mechanize = Mechanize.new
    page = mechanize.get("https://www.wunderground.com/")
    form = page.forms.first 
    form['query'] = "#{place.name}"
    page = form.submit
    page.uri
  end  
    
  def self.scrape_weather(place)
    weather_hash ={}
    url = "#{self.weather_url(place)}"
    html = Nokogiri::HTML(open(url))
    weather_hash[:temp] = html.css("div.forecast-box-header .primary-temp .wu-value")[1].text.to_i
    weather_hash[:precip] = html.css(".hook")[1].text[0..1].to_i
    weather_hash
  end

end  