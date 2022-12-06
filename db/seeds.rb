# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


require "open-uri"

User.destroy_all
puts "destroying users & bounties"
puts "creating users & bounties"

user = User.create!(email: "default@default.com", password: "123456", username: "Michel")
user.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/115413024?v=4"), filename: "michel.png", content_type: "image/png")
user.save!

user1 = User.create!(email: "default1@default.com", password: "123456", username: "Gwendolyne")
user1.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/96949079?v=4"), filename: "Gwendolyne.png", content_type: "image/png")
user1.save!

user2 = User.create!(email: "default2@default.com", password: "123456", username: "Josianne")
user2.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/106176972?v=4"), filename: "Josianne.png", content_type: "image/png")
user2.save!

user3 = User.create!(email: "default3@default.com", password: "123456", username: "Bernard")
user3.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/115095838?v=4"), filename: "Bernard.png", content_type: "image/png")
user3.save!

user4 = User.create!(email: "default4@default.com", password: "123456", username: "Superliver")
user4.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/115033783?v=4"), filename: "Superliver.png", content_type: "image/png")
user4.save!

user5 = User.create!(email: "default5@default.com", password: "123456", username: "Tocard")
user5.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/115413668?v=4"), filename: "Tocard.png", content_type: "image/png")
user5.save!

user6 = User.create!(email: "default6@default.com", password: "123456", username: "gasp_du_62")
user6.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/114876925?v=4"), filename: "gasp_du_62.png", content_type: "image/png")
user6.save!

user7 = User.create!(email: "default7@default.com", password: "123456", username: "Seisen")
user7.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/89862895?v=4"), filename: "Seisen.png", content_type: "image/png")
user7.save!

user8 = User.create!(email: "default8@default.com", password: "123456", username: "Tim")
user8.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/59280703?v=4"), filename: "Tim.png", content_type: "image/png")
user8.save!

user9 = User.create!(email: "default9@default.com", password: "123456", username: "Diane")
user9.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/43373459?v=4"), filename: "Diane.png", content_type: "image/png")
user9.save!

bounty1 = Bounty.create!(title: "can't get my variable to display anything", content: "Somehow when i call the variable 'x' on line 73 it isn't showing see the repo", price_cents: Money.new(1_099), difficulty_level: 1, github_repo: "https://github.com/roMPrd/RubyHunters", user: user)
bounty2 = Bounty.create!(title: "error 404 on a button, anchor/routing problem", content: "can't find the proper html anchor for my 'link_to' button", price_cents: Money.new(1_500), difficulty_level: 1, github_repo: "https://github.com/bbatsov/rubocop/blob/master/lib/rubocop.rb", user: user)
bounty3 = Bounty.create!(title: "db corrupted, not sure about a rollback", content: "my junior dev Ahmadou broke my code !", price_cents: Money.new(10_500), difficulty_level: 3, github_repo: "https://github.com/rails/rails/blob/master/railties/lib/rails/engine.rb", user: user)
bounty4 = Bounty.create!(title: "iteration on an array does give me the proper elements", content: "I can't iterate properly", price_cents: Money.new(4_500), difficulty_level: 2, github_repo: "https://github.com/rails/rails/blob/master/activemodel/lib/active_model/validations.rb", user: user)
bounty5 = Bounty.create!(title: "localize the barycenter of a triangle", content: "need to localize the barycenter or centroid of a triangle", price_cents: Money.new(45000), difficulty_level: 4, github_repo: "https://github.com/ruby-grape/grape/blob/master/lib/grape/api.rb", user: user1)
bounty6 = Bounty.create!(title: "find maximum and minimum values of a list", content: "I need two functions that recieves a list of integers", price_cents: Money.new(3500), difficulty_level: 1, github_repo: "https://github.com/Shopify/graphql-batch/blob/master/lib/graphql/batch.rb", user: user1)
bounty7 = Bounty.create!(title: "if..else and ternary operator", content: "need a complete function", price_cents: Money.new(11_000), difficulty_level: 2, github_repo: "https://github.com/jekyll/jekyll/blob/master/lib/jekyll/commands/build.rb", user: user1)
bounty8 = Bounty.create!(title: "is it a palindrome?", content: "need a full case insensitive function", price_cents: Money.new(6_100), difficulty_level: 2, github_repo: "https://github.com/rails/rails/blob/master/activerecord/lib/active_record/migration.rb", user: user1)
bounty9 = Bounty.create!(title: "surface covered algo", content: " write a function which calculates the area covered by a union of rectangles.", price_cents: Money.new(12500), difficulty_level: 3, github_repo: "https://github.com/ruby/ruby/blob/trunk/lib/rexml/parsers/baseparser.rb", user: user1)
bounty10 = Bounty.create!(title: "binomial expansion", content: "write a program that can do some algebra", price_cents: Money.new(20_500), difficulty_level: 4, github_repo: "https://github.com/opal/opal/blob/master/lib/opal/nodes/block_node.rb", user: user1)
bounty11 = Bounty.create!(title: "How many arguments", content: "can't get my function that takes a random number of arguments to work", price_cents: Money.new(10_500), difficulty_level: 2, github_repo: "https://github.com/fastlane/fastlane/blob/master/fastlane/lib/fastlane/actions/action.rb", user: user)
bounty12 = Bounty.create!(title: "the main controller of my meatball application isn't working", content: "my poorly designed cheap webapp isn't working", price_cents: Money.new(1_500), difficulty_level: 2, github_repo: "https://github.com/opal/opal/blob/master/lib/opal/sprockets/environment.rb", user: user5)
bounty13 = Bounty.create!(title: "Currency conversion in JavaScript", content: "Convert between different currencies using JavaScript", price_cents: Money.new(11_500), difficulty_level: 4, github_repo: "https://github.com/rails/rails/blob/master/actionpack/lib/action_controller/metal/strong_parameters.rb", user: user1)
bounty14 = Bounty.create!(title: "Add React Components", content: "Add React components to the application", price_cents: Money.new(12_800), difficulty_level: 4, github_repo: "https://github.com/sferik/twitter/blob/master/lib/twitter/config.rb", user: user1)
bounty15 = Bounty.create!(title: "Fixing the Database that i can't query properly", content: 'Incorrectly querying the database', price_cents: Money.new(1_900), difficulty_level: 2, github_repo: 'https://github.com/slim-template/slim/blob/master/lib/slim/parser.rb', user: user)
bounty16 = Bounty.create!(title: "Digital Root", content: 'given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced', price_cents: Money.new(9_500), difficulty_level: 3, github_repo: 'https://github.com/slim-template/slim/blob/master/lib/slim/parser.rb', user: user5)
bounty17 = Bounty.create!(title: "need a 'like-bar'", content: 'implement the function which takes an array containing the names of people that like an item', price_cents: Money.new(8_500), difficulty_level: 4, github_repo: 'https://github.com/slim-template/slim/blob/master/lib/slim/parser.rb', user: user5)
bounty18 = Bounty.create!(title: "combine override in material UI (React)", content: 'need to customise both the overall theme styling and the component styling at once in Material UI', price_cents: Money.new(15_500), difficulty_level: 5, github_repo: 'https://github.com/slim-template/slim/blob/master/lib/slim/parser.rb', user: user7)
bounty19 = Bounty.create!(title: "Show partial previous and next item on PageTabViewStyle", content: 'create a pager (PageTabViewStyle) that shows a little piece of the previous and next item', price_cents: Money.new(9_500), difficulty_level: 2, github_repo: 'https://github.com/slim-template/slim/blob/master/lib/slim/parser.rb', user: user8)
bounty20 = Bounty.create!(title: "looping video material in SceneKit for iOS app", content: 'create a material in SceneKit that plays a looping video', price_cents: Money.new(15_500), difficulty_level: 4, github_repo: 'https://github.com/slim-template/slim/blob/master/lib/slim/parser.rb', user: user8)
solution1 = Solution.create!(content: "you forgot to wrap your string with '' !", bounty: bounty1, user: user3, github_repo:"https://github.com/heartcombo/devise")
solution2 = Solution.create!(content: "this is an <a href> issue.", bounty: bounty2, user: user4, github_repo:"https://github.com/roMPrd/RubyHunters")
solution3 = Solution.create!(content: "in this case <%=link_to%> could be appropriate", bounty: bounty2, user: user2, github_repo:"https://github.com/roMPrd/RubyHunters")
solution4 = Solution.create!(content: "use db:rollback to reverse the said migration !", bounty: bounty3, user: user3, github_repo:"https://github.com/roMPrd/RubyHunters")
solution5 = Solution.create!(content: "i created a migration that suppresses the table column", bounty: bounty3, user: user2, github_repo:"https://github.com/roMPrd/RubyHunters")
solution6 = Solution.create!(content: "i used a map", bounty: bounty4, user: user2, github_repo:"https://github.com/roMPrd/RubyHunters")
solution7 = Solution.create!(content: "you should simply use each do", bounty: bounty4, user: user2, github_repo:"https://github.com/roMPrd/RubyHunters")
solution8 = Solution.create!(content: "used a very simple 3 parameters function", bounty: bounty5, user: user4, github_repo:"https://github.com/roMPrd/RubyHunters")
solution9 = Solution.create!(content: "i managed to pull it in a single function", bounty: bounty6, user: user2, github_repo:"https://github.com/roMPrd/RubyHunters")
solution10 = Solution.create!(content: "wrote two functions which take the said list as an argument", bounty: bounty6, user: user2, github_repo:"https://github.com/roMPrd/RubyHunters")
solution11 = Solution.create!(content: "wrote a simple one line function", bounty: bounty7, user: user2, github_repo:"https://github.com/roMPrd/RubyHunters")
solution12 = Solution.create!(content: "the function i wrote works on palindromes and is case insensitive", bounty: bounty8, user: user2, github_repo:"https://github.com/roMPrd/RubyHunters")
solution13 = Solution.create!(content: "the surface covered by the area is correctly calculated, see the tests", bounty: bounty9, user: user4, github_repo:"https://github.com/roMPrd/RubyHunters")
solution14 = Solution.create!(content: "the algebraical results validate the tests", bounty: bounty10, user: user3, github_repo:"https://github.com/roMPrd/RubyHunters")
solution15 = Solution.create!(content: "you forgot an end on your loop", bounty: bounty11, user: user3, github_repo:"https://github.com/heartcombo/devise")
solution15 = Solution.create!(content: "added proper routes to make your pile of garbage work !", bounty: bounty12, user: user, github_repo:"https://github.com/heartcombo/devise", status:"accepted")
solution16 = Solution.create!(content: "implemented the currency conversion feature using the JavaScript library 'Money.js", bounty: bounty13, user: user, github_repo:"https://github.com/lewagon/food-delivery")
solution17 = Solution.create!(content: "created React components for the application using the 'create-react-app' library", bounty: bounty14, user: user6, github_repo:"https://github.com/heartcombo/devise", status:"accepted")
solution18 = Solution.create!(content: "wrote a fonction that calculates the reduced number", bounty: bounty16, user: user6, github_repo:"https://github.com/heartcombo/devise", status:"accepted")
solution19 = Solution.create!(content: "wrote a case/when fonction that display the names as intended", bounty: bounty17, user: user9, github_repo:"https://github.com/heartcombo/devise", status:"accepted")
solution20 = Solution.create!(content: "used a JS controller that implement it nicely", bounty: bounty17, user: user9, github_repo:"https://github.com/heartcombo/devise")
solution21 = Solution.create!(content: "fixed your imported controllers should work like a charm !", bounty: bounty18, user: user9, github_repo:"https://github.com/heartcombo/devise", status: "accepted")
solution22 = Solution.create!(content: "implemented it using struct ContentView: View { ", bounty: bounty19, user: user6, github_repo:"https://github.com/heartcombo/devise", status: "accepted")
puts "BOUNTIES & USERS SUCCESSFULLY CREATED MOTHERFUCKS"
