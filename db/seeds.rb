# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

Author.destroy_all

authors = 3.times.map do
  Author.create(
    firstname: Faker::Name.unique.first_name,
    lastname: Faker::Name.unique.last_name
  )
end

authors.each do |author|
  posts = 2.times.map do
    Post.create(
      author: author,
      title: Faker::Company.bs,
      body: Faker::Lorem.paragraph
    )
  end

  3.times do
    Comment.create(
      post: posts.first,
      body: Faker::Lorem.sentence
    )
  end
end
