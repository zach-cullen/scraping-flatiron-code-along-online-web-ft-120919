require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper
  
  def get_page
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    titles = doc.css(".post").css("h2").map {|post| post.text}
    
    p doc.css(".post").first.css("p").text
  end
  
end

Scraper.new.get_page



