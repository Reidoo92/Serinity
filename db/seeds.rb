# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

p "Cleaning database..."
Restaurant.destroy_all
User.destroy_all
p "Database clean..."

p "Creating Doctor..."
User.create(email: "galaad@gmail.com", password: "galaad@gmail.com", first_name: "Galaad", last_name: "Michaud", age: 24, number: "0612345678", adress: "123 rue de la Paix, 91360", speciality: "Psychologue", role: "doctor")
User.create(email: "remi@gmail.com", password: "remi@gmail.com", first_name: "Remi", last_name: "Beuch", age: 30, number: "0690898989", adress: "91 rue de la Paix, 91360", speciality: "Psychologue", role: "doctor")
User.create(email: "guilhem@gmail.com", password: "guilhem@gmail.com", first_name: "Guilhem", last_name: "Hidalgo", age: 28, number: "0678787878", adress: "65 rue de la Paix, 91360", speciality: "Psychologue", role: "doctor")
User.create(email: "thibaud@gmail.com", password: "thibaud@gmail.com", first_name: "Thibaud", last_name: "Maurel", age: 27, number: "0609090990", adress: "7 rue de la Paix, 91360", speciality: "Psychologue", role: "doctor")
User.create(email: "fatma@gmail.com", password: "fatma@gmail.com", first_name: "Fatma", last_name: "Bellahouel", age: 29, number: "0618181818", adress: "21 rue de la Paix, 91360", speciality: "Psychologue", role: "doctor")
User.create(email: "alexis@gmail.com", password: "alexis@gmail.com", first_name: "Alexis", last_name: "Stephan", age: 99, number: "0676535212", adress: "93 rue de la Paix, 91360", speciality: "Psychologue", role: "doctor")

p "Creating Patient..."

User.create(email: "gilson@gmail.com", password: "gilson@gmail.com", first_name: "Gilson", last_name: "Djassan", age: 25, number: "0687654321", adress: "321 rue de la paix, 01530", role: "patient")
User.create(email: "laid@gmail.com", password: "laid@gmail.com", first_name: "Laid", last_name: "Sereir", age: 22, number: "0798765432", adress: "21 rue de la paix, 21700", role: "patient")
User.create(email: "emeraude@gmail.com", password: "emeraude@gmail.com", first_name: "Emeraude", last_name: "Chenille", age: 23, number: "0798738329", adress: "6 rue de la paix, 95670", role: "patient")
User.create(email: "ahmed@gmail.com", password: "ahmed@gmail.com", first_name: "Ahmed", last_name: "Salah", age: 20, number: "0798765412", adress: "64 rue de la paix, 82000", role: "patient")
User.create(email: "fred@gmail.com", password: "fred@gmail.com", first_name: "Fred", last_name: "Code", age: 26, number: "0796543532", adress: "546 rue de la paix, 77300", role: "patient")
User.create(email: "andre@gmail.com", password: "andre@gmail.com", first_name: "Andre", last_name: "Bresil", age: 24, number: "0783903345", adress: "7 rue de la paix, 33000", role: "patient")
User.create(email: "francois@gmail.com", password: "francois@gmail.com", first_name: "François", last_name: "Wayne", age: 43, number: "0676453003", adress: "98 rue de la paix, 12006", role: "patient")
User.create(email: "dalina@gmail.com", password: "dalina@gmail.com", first_name: "Dalina", last_name: "Lesourd", age: 37, number: "0628319321", adress: "121 rue de la paix, 340006", role: "patient")

p "Creating Reservation for galaad@gmail.com..."

Reservation.create(date: "2000-12-12", price: 50, doctor_id: 22, patient_id: 23)
Reservation.create(date: "2000-11-30", price: 50, doctor_id: 22, patient_id: 24)
Reservation.create(date: "2000-08-28", price: 50, doctor_id: 22, patient_id: 25)
Reservation.create(date: "2000-02-04", price: 50, doctor_id: 22, patient_id: 26)
Reservation.create(date: "2025-12-09", price: 50, doctor_id: 22, patient_id: 27)
Reservation.create(date: "2025-10-30", price: 50, doctor_id: 22, patient_id: 28)
Reservation.create(date: "2025-04-25", price: 50, doctor_id: 22, patient_id: 29)
Reservation.create(date: "2025-06-23", price: 50, doctor_id: 22, patient_id: 35)

p "Creating Reservation for remi@gmail.com..."

Reservation.create(date: "2000-12-12", price: 50, doctor_id: 30, patient_id: 23)
Reservation.create(date: "2000-11-30", price: 50, doctor_id: 30, patient_id: 24)
Reservation.create(date: "2000-08-28", price: 50, doctor_id: 30, patient_id: 25)
Reservation.create(date: "2000-02-04", price: 50, doctor_id: 30, patient_id: 26)
Reservation.create(date: "2025-12-09", price: 50, doctor_id: 30, patient_id: 27)
Reservation.create(date: "2025-10-30", price: 50, doctor_id: 30, patient_id: 28)
Reservation.create(date: "2025-04-25", price: 50, doctor_id: 30, patient_id: 29)
Reservation.create(date: "2025-06-23", price: 50, doctor_id: 30, patient_id: 35)

p "Seed created!"
