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
User.create(email: "galaad@gmail.com", password: "galaad@gmail.com", first_name: "Galaad", last_name: "Michaud", age: 24, number: "0612345678", adress: "123 rue de la paix, 91360", speciality: "Gynecologue", role: "doctor")
User.create(email: "gilson@gmail.com", password: "gilson@gmail.com", first_name: "Gilson", last_name: "Djassan", age: 25, number: "0687654321", adress: "321 rue de la paix, 94530", role: "patient")
User.create(email: "laid@gmail.com", password: "laid@gmail.com", first_name: "Laid", last_name: "Sereir", age: 22, number: "0798765432", adress: "213 rue de la paix, 92700", role: "patient")
User.create(email: "emeraude@gmail.com", password: "emeraude@gmail.com", first_name: "Emeraude", last_name: "Chenille", age: 23, number: "0798738329", adress: "456 rue de la paix, 95670", role: "patient")
User.create(email: "ahmed@gmail.com", password: "ahmed@gmail.com", first_name: "Ahmed", last_name: "Salah", age: 20, number: "0798765412", adress: "654 rue de la paix, 93000", role: "patient")
User.create(email: "fred@gmail.com", password: "fred@gmail.com", first_name: "Fred", last_name: "Code", age: 26, number: "0796543532", adress: "546 rue de la paix, 77300", role: "patient")
User.create(email: "andre@gmail.com", password: "andre@gmail.com", first_name: "Andre", last_name: "Bresil", age: 24, number: "0783903345", adress: "789 rue de la paix, 78000", role: "patient")
User.create(email: "francois@gmail.com", password: "francois@gmail.com", first_name: "François", last_name: "Wayne", age: 43, number: "0676453003", adress: "987 rue de la paix, 750006", role: "patient")
p "Seed created"
