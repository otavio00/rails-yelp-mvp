# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Review.destroy_all
Restaurant.destroy_all

r1 = Restaurant.create!(
  name: "Sushi Zen",
  address: "Rua da Praia, 123",
  phone_number: "1234-5678",
  category: "japanese"
)

r2 = Restaurant.create!(
  name: "La Pasta",
  address: "Avenida Itália, 45",
  phone_number: "8765-4321",
  category: "italian"
)

r3 = Restaurant.create!(
  name: "Frites House",
  address: "Praça Central, 9",
  phone_number: "1122-3344",
  category: "belgian"
)

r4 = Restaurant.create!(
  name: "De Primeira",
  address: "Aspicuelta 76",
  phone_number: "3123-4321",
  category: "chinese"
)

r5 = Restaurant.create!(
  name: "Le Wagon",
  address: "Avenida Doutor Arnaldo, 312",
  phone_number: "4345-3334",
  category: "french"
)

Review.create!(
  content: "Ótima comida, atendimento excelente!",
  rating: 5,
  restaurant: r1
)

Review.create!(
  content: "Bom custo-benefício.",
  rating: 4,
  restaurant: r2
)

Review.create!(
  content: "Batata frita incrível 😍",
  rating: 5,
  restaurant: r3
)

Review.create!(
  content: "Ótima atmosfera!",
  rating: 3,
  restaurant: r4
)

Review.create!(
  content: "Muito chique",
  rating: 5,
  restaurant: r5
)
