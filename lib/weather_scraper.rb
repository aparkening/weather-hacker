require 'pry'
require 'open-uri'
require 'mechanize'

class WeatherScraper
  
  weather_array = []
  
  def self.weather_location(location)
    mechanize = Mechanize.new
    page = mechanize.get("https://www.wunderground.com/")
    #binding.pry
    form = page.forms.first 
    form['query'] = "#{location.name}"
    #binding.pry
    page = form.submit
    page.uri
  end  
    
  def self.scrape_weather(location)
    weather_array = []
    url = "#{self.weather_location(location)}"
    #binding.pry
    #url = "https://www.accuweather.com/en/us/grand-rapids-mi/49503/weather-forecast/329374"
    html = Nokogiri::HTML(open(url))
    binding.pry
    @temp = html.css("div.forecast-box-header .primary-temp .wu-value")[1].texthtml.css("div.forecast-box-header span.to").text.to_i
    weather_array << @temp
    @cond = html.css(".grad-3 div.cond").text
    weather_array << @cond
    weather_array
    #binding.pry
  end

end  