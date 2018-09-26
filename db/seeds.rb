3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  	)
end

puts "3 Topics created"

10.times do |blog|
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
     body: "Barmi a bodyba johet"
		)
end

puts "8 portfolio item created"

1.times do |portfolio_item|
	Portfolio.create!(
     title: "Portfolio title: #{portfolio_item}",
     subtitle: "Angular",
     body: "Barmi faszsag, nemtuom mire"
		)
end

puts "+1 portfolio item created"

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
