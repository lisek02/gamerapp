# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(email: "admin@example.com",
							password: "password",
							password_confirmation: "password",
							admin: true)

99.times do |n|
	email = "example-#{n+1}@example.com"
	password = "password"
	User.create!(email: email,
							password: password,
							password_confirmation: password)
end

25.times do |n|
	title = Faker::App.name
	rate = rand(5) + 1
	Game.create!(title: title,
							rate: rate)
end

users = User.order(:created_at).take(10)
users.each do |user|
	number = (rand(25)) + 1
	4.times do |i|
		number2 = (number - 3*i) % 25
		if number2 != 0
			game = Game.find(number2)
			user.games << game
		end		
	end
end
