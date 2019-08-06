require 'open-uri'
require 'pry'

class Scraper


  def self.scrape_index_page(index_url)
    student_hash = []
    html = Nokogiri::html(open(index_url))
    html.css(".student-card").collect do |student|
    hash = {  
      name: student.css(h4.student-name).text
      location: student.css(p.student-location).text
      profile_url: student.css("a").attribute("href").value
     end
   student_hash
 end

    def self.scrape_profile_page(profile_url)
      
   end

  end
