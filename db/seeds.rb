# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
p "Creating Seed"
User.create(email: "galaad@gmail.com", password: "galaad@gmail.com", first_name: "Galaad", last_name: "Michaud", age: 24, number: "0612345678", adress: "123 rue de la paix", speciality: "Gynecologue", role: "doctor")
User.create(email: "gilson@gmail.com", password: "gilson@gmail.com", first_name: "Gilson", last_name: "Djassan", age: 25, number: "0687654321", adress: "321 rue de la paix", role: "patient")
User.create(email: "laid@gmail.com", password: "laid@gmail.com", first_name: "Laid", last_name: "Sereir", age: 25, number: "0798765432", adress: "213 rue de la paix", role: "patient")
p "Seed created"
