25.times do
  Article.create(
    name: Faker::Hacker.say_something_smart,
    body: Faker::Lorem.paragraph(5),
    authors: Faker::Book.author,
    genres: Faker::Book.genre
  )
end

25.times do
  Book.create(
    name: Faker::Book.title,
    authors: Faker::Book.author,
    publisher: Faker::Book.publisher,
    genres: Faker::Book.genre,
    available: Faker::Boolean.boolean
  )
end

25.times do
  List.create(name: Faker::University.name)
end
