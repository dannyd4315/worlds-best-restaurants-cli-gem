Gem::Specification.new do |s|
  s.name        = 'worlds-best-restaurants'
  s.version     = '0.0.1'
  s.date        = '2015-12-23'
  s.summary     = "Best Restaurants in the World"
  s.description = "Provides details on the San Pellegrino Worlds 50 Best restaurants"
  s.authors     = ["Danny Dawson"]
  s.email       = 'dannyd4315@gmail.com'
  s.files       = ["lib/worlds_best_restaurants.rb", "lib/worlds_best_restaurants/cli.rb", "lib/worlds_best_restaurants/scraper.rb", "lib/worlds_best_restaurants/restaurant.rb", "config/environment.rb"]
  s.homepage    = 'http://rubygems.org/gems/worlds-best-restaurants'
  s.license     = 'MIT'
  s.executables << 'worlds-best-restaurants'
end