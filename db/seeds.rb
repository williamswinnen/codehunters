# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Bounty.destroy_all
User.destroy_all
puts "destroying users & bounties"
puts "creating users & bounties"
user = User.create!(email: "default@default.com", password: "123456")
Bounty.create!(title: "variable", content: "I can't get my variable to display anything", price_cents: 1000, difficulty_level: 300, github_repo: "https://github.com/roMPrd/RubyHunters", user: user)
Bounty.create!(title: "error 404", content: "can't find the proper html anchor", price_cents: 1000, difficulty_level: 300, github_repo: "https://github.com/roMPrd/RubyHunters", user: user)
Bounty.create!(title: "db drop", content: "my junior dev Ahmadou broke my code !", price_cents: 1000, difficulty_level: 300, github_repo: "https://github.com/roMPrd/RubyHunters", user: user)
Bounty.create!(title: "iteration on array", content: "I can't iterate properly", price_cents: 1000, difficulty_level: 300, github_repo: "https://github.com/roMPrd/RubyHunters", user: user)
puts "BOUNTIES & USERS SUCCESSFULLY CREATED MOTHERFUCKS"
