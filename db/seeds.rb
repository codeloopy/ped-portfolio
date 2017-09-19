# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |blog|
  Blog.create!(
    title: "MY blogpost #{blog}",
    body: "Jianbing pickled chillwave microdosing enamel pin dreamcatcher
    mustache la croix humblebrag man braid viral.
    Letterpress raw denim green juice, pork belly asymmetrical swag yuccie
    succulents readymade hammock 8-bit brooklyn."
  )
end

puts "10 blog posts created"

5.times do |skills|
  Skill.create!(
  title: "Rails #{skills}",
  percent_utilized: 15
  )
end

puts "5 skills created"

9.times do |portfolio|
  Portfolio.create!(
  title: "Portfolio title: #{portfolio}",
  subtitle: "My great service",
  body: "Jianbing pickled chillwave microdosing enamel pin dreamcatcher
  mustache la croix humblebrag man braid viral.",
  main_image: "http://via.placeholder.com/350x200http://via.placeholder.com/600x400",
  thumb_image: "http://via.placeholder.com/600x400",
  )
end

puts "9 portfolio items created"
