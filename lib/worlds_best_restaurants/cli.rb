class CLI

  def call
    Scraper.new.make_restaurants
    puts "Welcome to the 50 Best Restaurants in the World"
    start
  end  

  def start
    puts ""
    puts "What number restaurants would you like to see? 1-10, 11-20, 21-30, 31-40 or 41-50?"
    input = gets.strip.to_i

    print_restaurants(input)

    puts ""
    puts "What restaurant would you like more information on?"
    input = gets.strip

    restaurant = Restaurant.find(input.to_i)

    print_restaurant(restaurant)

    puts ""
    puts "Would you like to see another restaurant? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      start
    else
      puts ""
      puts "Thankyou! Have a great day!"
      exit
    end    
  end

  def print_restaurant(restaurant)
    puts ""
    puts "----------- #{restaurant.name} - #{restaurant.position} -----------"
    puts ""
    puts "Location:           #{restaurant.location}"
    puts "Head Chef:          #{restaurant.head_chef}"
    puts "Style of Food:      #{restaurant.food_style}"
    puts "Standout Dish:      #{restaurant.best_dish}"
    puts "Contact:            #{restaurant.contact}"
    puts "Website:            #{restaurant.website_url}"
    puts ""
    puts "---------------Description--------------"
    puts ""
    puts "#{restaurant.description}"
    puts ""
  end

  def print_restaurants(from_number)
    puts ""
    puts "---------- Restaurants #{from_number} - #{from_number+9} ----------"
    puts ""
    Restaurant.all[from_number-1, 10].each.with_index(from_number) do |restaurant, index|
      puts "#{index}. #{restaurant.name} - #{restaurant.location}"
    end  
  end 

end  
