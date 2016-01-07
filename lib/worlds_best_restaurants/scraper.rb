class Scraper

  def get_page
    Nokogiri::HTML(open("http://www.theworlds50best.com/list/1-50-winners"))
  end 
  
  def scrape_restaurants_index
    self.get_page.css("div#t1-50 li")
  end

  def make_restaurants
    scrape_restaurants_index.each do |r| 
      restaurant = Restaurant.new
      restaurant.position = r.css(".position").text
      restaurant.location = r.css("h3").text
      restaurant.name = r.css("h2").text
      restaurant.url = "http://www.theworlds50best.com" + r.css("a").attribute("href").text
    end  
  end
end 