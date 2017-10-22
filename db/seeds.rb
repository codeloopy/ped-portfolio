3.times do |topic|
  Topi.create!(
    title: "Topic #{topic}"
  )
end

puts " 3 topics created"

10.times do |blog|
  Blog.create!(
    title: "MY blogpost #{blog}",
    body: "Jianbing pickled chillwave microdosing enamel pin dreamcatcher
    mustache la croix humblebrag man braid viral.
    Letterpress raw denim green juice, pork belly asymmetrical swag yuccie
    succulents readymade hammock 8-bit brooklyn.",
    topi_id: Topi.last.id
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

8.times do |portfolio|
  Portfolio.create!(
  title: "Portfolio title: #{portfolio}",
  subtitle: "Ruby on Rails",
  body: "Jianbing pickled chillwave microdosing enamel pin dreamcatcher
  mustache la croix humblebrag man braid viral.",
  main_image: "http://via.placeholder.com/350x200http://via.placeholder.com/600x400",
  thumb_image: "http://via.placeholder.com/600x400",
  )
end

puts "9 portfolio items created"


1.times do |portfolio|
  Portfolio.create!(
  title: "Portfolio title: #{portfolio}",
  subtitle: "Angular",
  body: "Jianbing pickled chillwave microdosing enamel pin dreamcatcher
  mustache la croix humblebrag man braid viral.",
  main_image: "http://via.placeholder.com/350x200",
  thumb_image: "http://via.placeholder.com/600x400",
  )
end
