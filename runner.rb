require_relative 'frontend'

Frontend.new.run 




# require 'unirest'

# system "clear"

# puts "Welcome to my Cookbook App"
# puts "make a selection"
# puts "    [1] See all recipes"
# puts "        [1.1] Search all recipes"
# puts "        [1.2] Sort recipes by chef"
# puts "        [1.3] Sort recipes by prep time"
# puts "    [2] See one recipe"
# puts "    [3] Create a new recipe"
# puts "    [4] Update a recipe"
# puts "    [5] Destroy a recipe"

# input_option = gets.chomp

# if input_option == "1"
#   response = Unirest.get("http://localhost:3000/recipes")
#   products = response.body
#   puts JSON.pretty_generate(products)

# elsif input_option == "1.1"
#   print "Enter a search term: "
#   search_term = gets.chomp

#   response = Unirest.get("http://localhost:3000/recipes?search=#{search_term}")
#   products = response.body
#   puts JSON.pretty_generate(products)  

# elsif input_option == "1.2"
#   response = Unirest.get("http://localhost:3000/recipes?sort=chef")
#   products = response.body
#   puts JSON.pretty_generate(products) 
# elsif input_option == "1.3"
#   response = Unirest.get("http://localhost:3000/recipes?sort=prep_time")
#   products = response.body
#   puts JSON.pretty_generate(products) 
# elsif input_option == "2"
#   print "Enter recipe id: "
#   input_id = gets.chomp

#   response = Unirest.get("http://localhost:3000/recipes/#{input_id}")
#   product = response.body
#   puts JSON.pretty_generate(product)
# elsif input_option == "3"
#   client_params = {}

#   print "Title: "
#   client_params[:title] = gets.chomp

#   print "Chef: "
#   client_params[:chef] = gets.chomp

#   print "Ingredients: "
#   client_params[:ingredients] = gets.chomp

#   print "Directions: "
#   client_params[:directions] = gets.chomp

#   print "Prep time: "
#   client_params[:prep_time] = gets.chomp

#   response = Unirest.post(
#                           "http://localhost:3000/recipes",
#                           parameters: client_params
#                           )
#   recipe_data = response.body

#   puts JSON.pretty_generate(recipe_data)
# elsif input_option == "4"
#   print "Enter recipe id: "
#   input_id = gets.chomp

#   response = Unirest.get("http://localhost:3000/recipes/#{input_id}")
#   recipe = response.body

#   client_params = {}

#   print "Title (#{recipe["title"]}): "
#   client_params[:title] = gets.chomp

#   print "Chef (#{recipe["chef"]}): "
#   client_params[:chef] = gets.chomp

#   print "Ingredients (#{recipe["ingredients"]}): "
#   client_params[:ingredients] = gets.chomp

#   print "Directions (#{recipe["directions"]}): "
#   client_params[:directions] = gets.chomp

#   print "Prep time: (#{recipe["prep_time"]}): "
#   client_params[:prep_time] = gets.chomp

#   client_params.delete_if { |key, value| value.empty? }
#   # p client_params
#   response = Unirest.patch(
#                           "http://localhost:3000/recipes/#{input_id}",
#                           parameters: client_params
#                           )
#   recipe_data = response.body

#   puts JSON.pretty_generate(recipe_data)
# elsif input_option == "5"
#   print "Enter recipe id: "
#   input_id = gets.chomp

#   response = Unirest.delete("http://localhost:3000/recipes/#{input_id}")
#   data = response.body
#   puts data["message"]
# end
