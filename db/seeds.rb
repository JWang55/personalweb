# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'destroying all data'
Comment.destroy_all
Article.destroy_all


puts 'creating articles'
10.times do
  title = Faker::Movies::HarryPotter.location
  proper = Faker::Movies::HarryPotter.quote
  article = Article.create!(
    title: title,
    proper: proper,
    category: title
  )
  2.times do
    content = Faker::Marketing.buzzwords
    Comment.create!(
      content: content,
      name: "visitor",
      email: "whatever",
      article_id: article.id
    )
  end
end
