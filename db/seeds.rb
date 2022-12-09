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

user = User.create!(email: "default@default.com", password: "123456", username: "Michel", walletaddress: "0xed13fB9341cF596824C06d0b1D082Aa80A4F32dF")
user.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/115413024?v=4"), filename: "michel.png", content_type: "image/png")
user.save!

user1 = User.create!(email: "default1@default.com", password: "123456", username: "Ahmadou", walletaddress: "0x91C55Af814A5E6cE0a2cFDF372dc8017f435151F")
user1.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/96949079?v=4"), filename: "Gwendolyne.png", content_type: "image/png")
user1.save!

user2 = User.create!(email: "default2@default.com", password: "123456", username: "Josianne", walletaddress: "0xCD417A2F57eD3e0c961f1F74D61b4F0BDB6c1533")
user2.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/106176972?v=4"), filename: "Josianne.png", content_type: "image/png")
user2.save!

user3 = User.create!(email: "default3@default.com", password: "123456", username: "Bernard", walletaddress: "0xCD417A2F57eD3e0c961f1F74D61b4F0BDB6c1533")
user3.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/115095838?v=4"), filename: "Bernard.png", content_type: "image/png")
user3.save!

user4 = User.create!(email: "default4@default.com", password: "123456", username: "Romain", walletaddress: "0xCD417A2F57eD3e0c961f1F74D61b4F0BDB6c1533")
user4.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/115033783?v=4"), filename: "Superliver.png", content_type: "image/png")
user4.save!

user5 = User.create!(email: "default5@default.com", password: "123456", username: "Joël", walletaddress: "0xCD417A2F57eD3e0c961f1F74D61b4F0BDB6c1533")
user5.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/115413668?v=4"), filename: "Tocard.png", content_type: "image/png")
user5.save!

user6 = User.create!(email: "default6@default.com", password: "123456", username: "gasp_du_62", walletaddress: "0xCD417A2F57eD3e0c961f1F74D61b4F0BDB6c1533")
user6.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/114876925?v=4"), filename: "gasp_du_62.png", content_type: "image/png")
user6.save!

user7 = User.create!(email: "default7@default.com", password: "123456", username: "Seisen", walletaddress: "0xCD417A2F57eD3e0c961f1F74D61b4F0BDB6c1533")
user7.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/89862895?v=4"), filename: "Seisen.png", content_type: "image/png")
user7.save!

user8 = User.create!(email: "default8@default.com", password: "123456", username: "Tim", walletaddress: "0xCD417A2F57eD3e0c961f1F74D61b4F0BDB6c1533")
user8.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/59280703?v=4"), filename: "Tim.png", content_type: "image/png")
user8.save!

user9 = User.create!(email: "default9@default.com", password: "123456", username: "Diane", walletaddress: "0xCD417A2F57eD3e0c961f1F74D61b4F0BDB6c1533")
user9.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/43373459?v=4"), filename: "Diane.png", content_type: "image/png")
user9.save!

user10 = User.create!(email: "default10@default.com", password: "123456", username: "Dark_sasuke_XX", walletaddress: "0xCD417A2F57eD3e0c961f1F74D61b4F0BDB6c1533")
user10.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/54006203?v=4"), filename: "Dark_sasuke_XX.png", content_type: "image/png")
user10.save!

bounty1 = Bounty.create!(deadline: Date.new(2023, 5, 12), title: "can't get my variable to display anything", content: "Somehow when i call the variable 'x' on line 73 it isn't showing see the repo", price_cents: 0.00081, difficulty_level: 1, github_repo: "https://github.com/ruby-grape/grape/blob/master/lib/grape/api.rb", user: user, smartcontractaddress: "0xE7B17dd54bF1aE4f26A2F2Bee9118A53ad718918")
bounty2 = Bounty.create!(deadline: Date.new(2022, 12, 29), title: "error 404 on a button, anchor/routing problem", content: "can't find the proper html anchor for my 'link_to' button", price_cents: 0.00181, difficulty_level: 1, github_repo: "https://github.com/ruby-grape/grape/blob/master/lib/grape/api.rb", user: user, smartcontractaddress: "0xE7B17dd54bF1aE4f26A2F2Bee9118A53ad718918")
bounty3 = Bounty.create!(title: "db corrupted, not sure about a rollback", content: "my junior dev Ahmadou broke my code !", price_cents: 0.001, difficulty_level: 3, github_repo: "https://github.com/ruby-grape/grape/blob/master/lib/grape/api.rb", user: user, smartcontractaddress: "0xE7B17dd54bF1aE4f26A2F2Bee9118A53ad718918")
bounty4 = Bounty.create!(title: "iteration on an array does give me the proper elements", content: "I can't iterate properly", price_cents: 0.0012, difficulty_level: 2, github_repo: "https://github.com/ruby-grape/grape/blob/master/lib/grape/api.rb", user: user1, smartcontractaddress: "0xE7B17dd54bF1aE4f26A2F2Bee9118A53ad718918")
bounty5 = Bounty.create!(title: "localize the barycenter of a triangle", content: "need to localize the barycenter or centroid of a triangle", price_cents: 0.00455, difficulty_level: 4, github_repo: "https://github.com/ruby-grape/grape/blob/master/lib/grape/api.rb", user: user1, smartcontractaddress: "0xE7B17dd54bF1aE4f26A2F2Bee9118A53ad718918")
bounty6 = Bounty.create!(title: "find maximum and minimum values of a list", content: "I need two functions that recieves a list of integers", price_cents: 0.0046, difficulty_level: 1, github_repo: "https://github.com/ruby-grape/grape/blob/master/lib/grape/api.rb", user: user1, smartcontractaddress: "0xE7B17dd54bF1aE4f26A2F2Bee9118A53ad718918")
bounty7 = Bounty.create!(title: "if..else and ternary operator", content: "need a complete function", price_cents: 0.005, difficulty_level: 2, github_repo: "https://github.com/roMPrd/RubyHunters/blob/master/app/controllers/bounties_controller.rb", user: user1, smartcontractaddress: "0xE7B17dd54bF1aE4f26A2F2Bee9118A53ad718918")
bounty8 = Bounty.create!(title: "is it a palindrome?", content: "need a full case insensitive function", price_cents: 0.00845, difficulty_level: 2, github_repo: "https://github.com/roMPrd/RubyHunters/blob/master/app/controllers/bounties_controller.rb", user: user2, smartcontractaddress: "0xE7B17dd54bF1aE4f26A2F2Bee9118A53ad718918")
bounty9 = Bounty.create!(title: "surface covered algo", content: " write a function which calculates the area covered by a union of rectangles.", price_cents: 0.002, difficulty_level: 3, github_repo: "https://github.com/roMPrd/RubyHunters/blob/master/app/controllers/bounties_controller.rb", user: user2, smartcontractaddress: "0xE7B17dd54bF1aE4f26A2F2Bee9118A53ad718918")
bounty10 = Bounty.create!(title: "binomial expansion", content: "write a program that can do some algebra", price_cents: 0.04, difficulty_level: 4, github_repo: "https://github.com/roMPrd/RubyHunters/blob/master/app/controllers/dashboard_controller.rb", user: user3, smartcontractaddress: "0xE7B17dd54bF1aE4f26A2F2Bee9118A53ad718918")
bounty11 = Bounty.create!(title: "How many arguments", content: "can't get my function that takes a random number of arguments to work", price_cents: 0.0065, difficulty_level: 2, github_repo: "https://github.com/roMPrd/RubyHunters/blob/master/app/controllers/dashboard_controller.rb", user: user3, smartcontractaddress: "0xE7B17dd54bF1aE4f26A2F2Bee9118A53ad718918")
bounty12 = Bounty.create!(title: "the main controller of my meatball application isn't working", content: "my poorly designed cheap webapp isn't working", price_cents: 0.0025, difficulty_level: 2, github_repo: "https://github.com/roMPrd/RubyHunters/blob/master/app/controllers/dashboard_controller.rb", user: user3, smartcontractaddress: "0xE7B17dd54bF1aE4f26A2F2Bee9118A53ad718918")
bounty13 = Bounty.create!(title: "Currency conversion in JavaScript", content: "Convert between different currencies using JavaScript", price_cents: 0.0032, difficulty_level: 4, github_repo: "https://github.com/roMPrd/RubyHunters/blob/master/app/controllers/dashboard_controller.rb", user: user4, smartcontractaddress: "0xE7B17dd54bF1aE4f26A2F2Bee9118A53ad718918")
bounty14 = Bounty.create!(title: "Add React Components", content: "Add React components to the application", price_cents: 0.0023, difficulty_level: 4, github_repo: "https://github.com/roMPrd/RubyHunters/blob/master/app/controllers/dashboard_controller.rb", user: user5, smartcontractaddress: "0xE7B17dd54bF1aE4f26A2F2Bee9118A53ad718918")
bounty15 = Bounty.create!(title: "Fixing the Database that i can't query properly", content: 'Incorrectly querying the database', price_cents: 0.0068, difficulty_level: 2, github_repo: 'https://github.com/roMPrd/RubyHunters/blob/master/app/controllers/dashboard_controller.rb', user: user5, smartcontractaddress: "0xE7B17dd54bF1aE4f26A2F2Bee9118A53ad718918")
bounty16 = Bounty.create!(title: "Digital Root", content: 'given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced', price_cents: 0.003, difficulty_level: 3, github_repo: 'https://github.com/roMPrd/RubyHunters/blob/master/app/controllers/dashboard_controller.rb', user: user5, smartcontractaddress: "0xE7B17dd54bF1aE4f26A2F2Bee9118A53ad718918")
bounty17 = Bounty.create!(title: "need a 'like-bar'", content: 'implement the function which takes an array containing the names of people that like an item', price_cents: 0.0058, difficulty_level: 4, github_repo: 'https://github.com/roMPrd/RubyHunters/blob/master/app/controllers/dashboard_controller.rb', user: user6, smartcontractaddress: "0xE7B17dd54bF1aE4f26A2F2Bee9118A53ad718918")
bounty18 = Bounty.create!(title: "combine override in material UI (React)", content: 'need to customise both the overall theme styling and the component styling at once in Material UI', price_cents: 0.0068, difficulty_level: 5, github_repo: 'https://github.com/roMPrd/RubyHunters/blob/master/app/controllers/dashboard_controller.rb', user: user6, smartcontractaddress: "0xE7B17dd54bF1aE4f26A2F2Bee9118A53ad718918")
bounty19 = Bounty.create!(title: "Show partial previous and next item on PageTabViewStyle", content: 'create a pager (PageTabViewStyle) that shows a little piece of the previous and next item', price_cents: 0.004, difficulty_level: 2, github_repo: 'https://github.com/roMPrd/RubyHunters/blob/master/app/controllers/dashboard_controller.rb', user: user8, smartcontractaddress: "0xE7B17dd54bF1aE4f26A2F2Bee9118A53ad718918")
bounty20 = Bounty.create!(title: "looping video material in SceneKit for iOS app", content: 'create a material in SceneKit that plays a looping video', price_cents: 0.0004, difficulty_level: 4, github_repo: 'https://github.com/roMPrd/RubyHunters/blob/master/app/controllers/dashboard_controller.rb', user: user8, smartcontractaddress: "0xE7B17dd54bF1aE4f26A2F2Bee9118A53ad718918")
bounty21 = Bounty.create!(title: "reset the value of operator in calculator", content: 'reset my custom made calculator', price_cents: 0.0054, difficulty_level: 3, github_repo: 'https://github.com/roMPrd/RubyHunters/blob/master/app/controllers/dashboard_controller.rb', user: user6, smartcontractaddress: "0xE7B17dd54bF1aE4f26A2F2Bee9118A53ad718918")
bounty22 = Bounty.create!(title: "finding the root directory of a dependency in NPM", content: 'get the root directory of my script', price_cents: 0.0034, difficulty_level: 2, github_repo: 'https://github.com/roMPrd/RubyHunters/blob/master/app/controllers/dashboard_controller.rb', user: user6, smartcontractaddress: "0xE7B17dd54bF1aE4f26A2F2Bee9118A53ad718918")
solution1 = Solution.create!(content: "you forgot to wrap your string with '' !", bounty: bounty1, user: user10, github_repo:"https://github.com/heartcombo/devise")
solution2 = Solution.create!(content: "this is an <a href> issue.", bounty: bounty2, user: user9, github_repo:"https://github.com/roMPrd/RubyHunters")
solution3 = Solution.create!(content: "in this case <%=link_to%> could be appropriate", bounty: bounty2, user: user8, github_repo:"https://github.com/roMPrd/RubyHunters")
solution4 = Solution.create!(content: "use db:rollback to reverse the said migration !", bounty: bounty3, user: user9, github_repo:"https://github.com/roMPrd/RubyHunters")
solution5 = Solution.create!(content: "i created a migration that suppresses the table column", bounty: bounty3, user: user10, github_repo:"https://github.com/roMPrd/RubyHunters")
solution6 = Solution.create!(content: "i used a map", bounty: bounty4, user: user9, github_repo:"https://github.com/roMPrd/RubyHunters", status:"accepted")
solution7 = Solution.create!(content: "you should simply use each do", bounty: bounty4, user: user2, github_repo:"https://github.com/roMPrd/RubyHunters")
solution8 = Solution.create!(content: "used a very simple 3 parameters function", bounty: bounty5, user: user9, github_repo:"https://github.com/roMPrd/RubyHunters", status:"accepted")
solution9 = Solution.create!(content: "i managed to pull it in a single function", bounty: bounty6, user: user2, github_repo:"https://github.com/roMPrd/RubyHunters")
solution10 = Solution.create!(content: "wrote two functions which take the said list as an argument", bounty: bounty6, user: user2, github_repo:"https://github.com/roMPrd/RubyHunters", status:"accepted")
solution11 = Solution.create!(content: "wrote a simple one line function", bounty: bounty7, user: user2, github_repo:"https://github.com/roMPrd/RubyHunters")
solution12 = Solution.create!(content: "the function i wrote works on palindromes and is case insensitive", bounty: bounty8, user: user2, github_repo:"https://github.com/roMPrd/RubyHunters")
solution13 = Solution.create!(content: "the surface covered by the area is correctly calculated, see the tests", bounty: bounty9, user: user4, github_repo:"https://github.com/roMPrd/RubyHunters")
solution14 = Solution.create!(content: "the algebraical results validate the tests", bounty: bounty10, user: user4, github_repo:"https://github.com/roMPrd/RubyHunters")
solution15 = Solution.create!(content: "you forgot an end on your loop", bounty: bounty11, user: user3, github_repo:"https://github.com/heartcombo/devise")
solution15 = Solution.create!(content: "added proper routes to make your pile of garbage work !", bounty: bounty12, user: user3, github_repo:"https://github.com/heartcombo/devise", status:"accepted")
solution16 = Solution.create!(content: "implemented the currency conversion feature using the JavaScript library 'Money.js", bounty: bounty13, user: user, github_repo:"https://github.com/lewagon/food-delivery")
solution17 = Solution.create!(content: "created React components for the application using the 'create-react-app' library", bounty: bounty14, user: user4, github_repo:"https://github.com/heartcombo/devise", status:"accepted")
solution18 = Solution.create!(content: "wrote a fonction that calculates the reduced number", bounty: bounty16, user: user6, github_repo:"https://github.com/heartcombo/devise", status:"accepted")
solution19 = Solution.create!(content: "wrote a case/when fonction that display the names as intended", bounty: bounty17, user: user, github_repo:"https://github.com/heartcombo/devise", status:"accepted")
solution20 = Solution.create!(content: "used a JS controller that implement it nicely", bounty: bounty17, user: user9, github_repo:"https://github.com/heartcombo/devise")
solution21 = Solution.create!(content: "fixed your imported controllers should work like a charm !", bounty: bounty18, user: user10, github_repo:"https://github.com/heartcombo/devise", status: "accepted")
solution22 = Solution.create!(content: "implemented it using struct ContentView: View { ", bounty: bounty19, user: user6, github_repo:"https://github.com/heartcombo/devise", status: "accepted")
solution23 = Solution.create!(content: " i captured the = as an operator, and check for it's presence in the handleNumber", bounty: bounty21, user: user1, github_repo:"https://github.com/heartcombo/devise", status: "accepted")
solution24 = Solution.create!(content: " run the migration i created it should fix the 'product' table", bounty: bounty15, user: user, github_repo:"https://github.com/heartcombo/devise", status: "accepted")
solution25 = Solution.create!(content: " created a functionnal View Controller to make the loop work", bounty: bounty20, user: user8, github_repo:"https://github.com/heartcombo/devise", status: "accepted")
solution25 = Solution.create!(content: " i used require.resolve and a const path", bounty: bounty22, user: user7, github_repo:"https://github.com/heartcombo/devise", status: "accepted")
User.all.each do |u|
  u.update_ranking
end
puts "BOUNTIES & USERS SUCCESSFULLY CREATED MOTHERFUCKS"
