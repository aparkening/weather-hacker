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
    #binding.pry
    @temp = html.css("div.forecast-box-header .primary-temp .wu-value")[1].text.to_i
    #binding.pry
    weather_array << @temp
    @precip_percent = html.css(".hook")[1].text[0..1].to_i
    weather_array << @precip_percent
    weather_array
    #binding.pry
  end

end  