require 'pry'
require 'open-uri'
require 'mechanize'

class WeatherScraper
  
  def self.weather_location(location)
    mechanize = Mechanize.new
    page = mechanize.get("https://www.wunderground.com/")
    form = page.forms.first 
    form['query'] = "#{location.name}"
    page = form.submit
    page.uri
  end  
    
  def self.scrape_weather(location)
    weather_array =[]
    url = "#{self.weather_location(location)}"
    html = Nokogiri::HTML(open(url))
    @temp = html.css("div.forecast-box-header .primary-temp .wu-value")[1].text.to_i
    weather_array << @temp
    @precip_percent = html.css(".hook")[1].text[0..1].to_i
    weather_array << @precip_percent
    weather_array
  end

end  