User.create!(
 email: "test@test.com",
 password: "password",
 password_confirmation: "password",
 name: "Admin_User",
 roles: "site_admin"
)

puts "1 Admin user created"

User.create!(
 email: "test2@test.com",
 password: "password",
 password_confirmation: "password",
 name: "Regular_User"
)

puts "1 Regular user created"

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  	)
end

puts "3 Topics created"

8.times do |blog|
	Blog.create!(
     title: "My Blog Post #{blog}",
     body: "Bamri randnom",
     topic_id: Topic.last.id
		)
end

puts "10 blog post created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
		)
end

puts "5 skills created"

8.times do |portfolio_item|
	Portfolio.create!(
     title: "Portfolio title: #{portfolio_item}",
     subtitle: "Rails",
     body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
     Nam id ante lobortis, accumsan elit sed, elementum nisi. Etiam sed ligula eget urna mattis mollis. 
     Nunc fermentum quam sit amet felis volutpat interdum. Ut mollis eros eget laoreet egestas. 
     In consectetur ex quis quam euismod mollis. Nam eget tellus consectetur, gravida dui eget, pharetra enim. 
     Aenean a leo urna. Phasellus eget ante elementum, accumsan urna vel, condimentum nibh. 
     Aliquam posuere dignissim mauris, a finibus massa placerat a.
Phasellus porta tortor non accumsan vestibulum. Vivamus id odio libero. 
Curabitur non erat dictum augue fringilla aliquet. Morbi vel sem condimentum, mattis mauris eget."
		)
end

puts "8 portfolio item created"

3.times do |technology|
    Technology.create!(
        name:"Technology #{technology}",
        portfolio_id: Portfolio.last.id
         )
end

puts "eee3 Technologies created"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
