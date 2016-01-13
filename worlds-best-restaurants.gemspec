require_relative './lib/worlds_best_restaurants/version'

Gem::Specification.new do |s|
  s.name        = 'worlds-best-restaurants'
  s.version     = WorldsBestRestaurants::VERSION
  s.date        = '2016-01-13'
  s.summary     = "Best Restaurants in the World"
  s.description = "Provides details on the San Pellegrino Worlds 50 Best restaurants"
  s.authors     = ["Danny Dawson"]
  s.email       = 'dannyd4315@gmail.com'
  s.files       = ["lib/worlds_best_restaurants.rb", "lib/worlds_best_restaurants/cli.rb", "lib/worlds_best_restaurants/scraper.rb", "lib/worlds_best_restaurants/restaurant.rb", "config/environment.rb"]
  s.homepage    = 'http://rubygems.org/gems/worlds-best-restaurants'
  s.license     = 'MIT'
  s.executables << 'worlds-best-restaurants'

  s.add_development_dependency "bundler", "~> 1.10"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", ">= 0"
  s.add_development_dependency "nokogiri", ">= 0"
  s.add_development_dependency "pry", ">= 0"
end