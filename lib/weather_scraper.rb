require 'pry'
require 'open-uri'
require 'mechanize'

class WeatherScraper
  
  weather_array = []
  
  def weather_location(location)
    mechanize = Mechanize.new
    page = mechnize.get("https://www.accuweather.com/")
    form = page.forms.first 
    form['q'] = '#{location}'
    binding.pry
    page = form.submit
    binding.pry
    page.search()
    
  end  
    
  def self.scrape_weather
    weather_array = []
    url = "https://www.accuweather.com/en/us/grand-rapids-mi/49503/weather-forecast/329374"
    html = Nokogiri::HTML(open(url))
    @temp = html.css(".grad-3 div.hi").text
    weather_array << @temp
    @cond = html.css(".grad-3 div.cond").text
    weather_array << @cond
    weather_array
    #binding.pry
  end

end  