# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

book1 = Book.create!(
  title: "The Secret Garden",
  author: "Frances Hodgson Burnett",
  synopsis: "A young girl finds herself in a new home in a new country and feels all alone until she meets a strange boy and finds a secret garden",
  publisher: "Dell Publishing",
  publication_year: 1987,
  number_of_pages: 287,
  isbn: "0-440-97709-6",
  original_release_year: 1911
)