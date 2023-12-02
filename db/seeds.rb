# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"

p "Cleaning database..."
Reservation.destroy_all
User.destroy_all
p "Database clean..."

p "Creating Doctor..."
User.create(email: "galaad@gmail.com", password: "galaad@gmail.com", first_name: "Galaad", last_name: "Michaud", age: 24, number: "0612345678", adress: "17 Rue Dupetit-Thouars, 75003 Paris", speciality: "Psychologue", role: "doctor")
User.create(email: "remi@gmail.com", password: "remi@gmail.com", first_name: "Remi", last_name: "Beuch", age: 30, number: "0690898989", adress: "195 Bd Saint-Germain, 75007 Paris", speciality: "Psychologue", role: "doctor")
User.create(email: "guilhem@gmail.com", password: "guilhem@gmail.com", first_name: "Guilhem", last_name: "Hidalgo", age: 28, number: "0678787878", adress: "106 Rue des Dames, 75017 Paris", speciality: "Psychologue", role: "doctor")
User.create(email: "thibaud@gmail.com", password: "thibaud@gmail.com", first_name: "Thibaud", last_name: "Maurel", age: 27, number: "0609090990", adress: "190 Rue Gabriel Péri, 92700 Colombe", speciality: "Psychologue", role: "doctor")
User.create(email: "fatma@gmail.com", password: "fatma@gmail.com", first_name: "Fatma", last_name: "Bellahouel", age: 29, number: "0618181818", adress: "21 Rue Maurice Rechsteiner, 95100 Argenteuil", speciality: "Psychologue", role: "doctor")
User.create(email: "alexis@gmail.com", password: "alexis@gmail.com", first_name: "Alexis", last_name: "Stephan", age: 99, number: "0676535212", adress: "55 Rue des Nollées, 92230 Gennevilliers", speciality: "Psychologue", role: "doctor")

p "Creating Patient..."

User.create(email: "gilson@gmail.com", password: "gilson@gmail.com", first_name: "Gilson", last_name: "Djassan", age: 25, number: "0687654321", adress: "1B Rue Louis Vuitton, 92600 Asnières-sur-Seine", role: "patient")
User.create(email: "laid@gmail.com", password: "laid@gmail.com", first_name: "Laid", last_name: "Sereir", age: 22, number: "0798765432", adress: "3 Av. Marceau, 93130 Noisy-le-Sec", role: "patient")
User.create(email: "emeraude@gmail.com", password: "emeraude@gmail.com", first_name: "Emeraude", last_name: "Chenille", age: 23, number: "0798738329", adress: "2 bis Rue du Dr Potain, 75019 Paris", role: "patient")
User.create(email: "ahmed@gmail.com", password: "ahmed@gmail.com", first_name: "Ahmed", last_name: "Salah", age: 20, number: "0798765412", adress: "Foyer Maurice Maignen, 29 Rue de Lourmel, 75015 Paris", role: "patient")
User.create(email: "fred@gmail.com", password: "fred@gmail.com", first_name: "Fred", last_name: "Code", age: 26, number: "0796543532", adress: "546 rue de la paix, 77300", role: "patient")
User.create(email: "andre@gmail.com", password: "andre@gmail.com", first_name: "Andre", last_name: "Bresil", age: 24, number: "0783903345", adress: "34 Av. George V, 75008 Paris", role: "patient")
User.create(email: "francois@gmail.com", password: "francois@gmail.com", first_name: "François", last_name: "Wayne", age: 43, number: "0676453003", adress: "14 Av. Sainte-Foy, 92200 Neuilly-sur-Seine", role: "patient")
User.create(email: "dalina@gmail.com", password: "dalina@gmail.com", first_name: "Dalina", last_name: "Lesourd", age: 37, number: "0628319321", adress: "32 Rue Lepic, 75018 Paris", role: "patient")
User.create(email: "thomas@gmail.com", password: "thomas@gmail.com", first_name: "Thomas", last_name: "Traore", age: 99, number: "0609675732", adress: "10 Rue Puget, 75018 Paris", role: "patient")

p "Creating PAST Reservation for galaad@gmail.com..."

Reservation.create(date: "2000-12-12", price: 50, doctor_id: User.where(role: 'doctor').first.id, patient_id: User.where(role: 'patient')[0].id)
Reservation.create(date: "2000-11-30", price: 50, doctor_id: User.where(role: 'doctor').first.id, patient_id: User.where(role: 'patient')[1].id)
Reservation.create(date: "2000-08-28", price: 50, doctor_id: User.where(role: 'doctor').first.id, patient_id: User.where(role: 'patient')[2].id)
Reservation.create(date: "2000-02-04", price: 50, doctor_id: User.where(role: 'doctor').first.id, patient_id: User.where(role: 'patient')[3].id)

p "Creating UPCOMING Reservation for galaad@gmail.com..."

Reservation.create(date: "2025-12-09", price: 50, doctor_id: User.where(role: 'doctor').first.id, patient_id: User.where(role: 'patient')[4].id)
Reservation.create(date: "2025-10-30", price: 50, doctor_id: User.where(role: 'doctor').first.id, patient_id: User.where(role: 'patient')[5].id)
Reservation.create(date: "2025-04-25", price: 50, doctor_id: User.where(role: 'doctor').first.id, patient_id: User.where(role: 'patient')[6].id)
Reservation.create(date: "2025-06-23", price: 50, doctor_id: User.where(role: 'doctor').first.id, patient_id: User.where(role: 'patient')[7].id)

p "Creating PAST Reservation for remi@gmail.com..."

Reservation.create(date: "2000-12-12", price: 50, doctor_id: User.where(role: 'doctor').second.id, patient_id: User.where(role: 'patient')[0].id)
Reservation.create(date: "2000-11-30", price: 50, doctor_id: User.where(role: 'doctor').second.id, patient_id: User.where(role: 'patient')[1].id)
Reservation.create(date: "2000-08-28", price: 50, doctor_id: User.where(role: 'doctor').second.id, patient_id: User.where(role: 'patient')[2].id)
Reservation.create(date: "2000-02-04", price: 50, doctor_id: User.where(role: 'doctor').second.id, patient_id: User.where(role: 'patient')[3].id)

p "Creating UPCOMING Reservation for remi@gmail.com..."

Reservation.create(date: "2025-12-09", price: 50, doctor_id: User.where(role: 'doctor').second.id, patient_id: User.where(role: 'patient')[4].id)
Reservation.create(date: "2025-10-30", price: 50, doctor_id: User.where(role: 'doctor').second.id, patient_id: User.where(role: 'patient')[5].id)
Reservation.create(date: "2025-04-25", price: 50, doctor_id: User.where(role: 'doctor').second.id, patient_id: User.where(role: 'patient')[6].id)
Reservation.create(date: "2025-06-23", price: 50, doctor_id: User.where(role: 'doctor').second.id, patient_id: User.where(role: 'patient')[7].id)
Reservation.create(date: "2027-06-23", price: 50, doctor_id: User.where(role: 'doctor').second.id, patient_id: User.where(role: 'patient')[8].id)
p "Seed created!"
