require 'pry'
require 'open-uri'
require 'mechanize'
require_relative './weather.rb'

class WeatherScraper
  
  attr_accessor :temp, :weather, :precip, :temp_code, :precip_code
  
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
    
    begin 
      retries ||= 0
      puts "I'm trying the #{retries} time"
      html = Nokogiri::HTML(open(url))
      @temp_code = html.css("div.forecast-box-header .primary-temp .u-value")
      raise @temp_code.text.empty?
    rescue TypeError
      retries += 1
      retry if retries < 10
      puts "I've tried #{retries} times!"

      DestinationFinder.new.call
    end
    weather_hash[:temp] = @temp_code[1].text.to_i
      
    @precip_code = html.css(".hook")
    while @precip_code.text == ""
    #binding.pry
      html = Nokogiri::HTML(open(url))
      @precip_code = html.css(".hook")
      i = i + 1 
      if i > 10
        puts "We are experiencing difficulties. Please try again later."
        puts ""
        puts ""
        puts ""
        puts "-------------------------------------"
        DestinationFinder.new.call
      end  
    end 
    
    weather_hash[:precip] = @precip_code.text[0..1].to_i
   
    weather_hash
  end

end  