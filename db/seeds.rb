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

# Nettoyer la base de données
puts 'Cleaning database...'
Reservation.destroy_all
User.destroy_all
puts 'Database clean...'

# seed.rb

# ... (le reste du code)

# Création des médecins
puts 'Creating Doctors...'

# Utilisateur déjà existant
gilson = User.create(
  email: 'gilson@gmail.com',
  password: 'gilson@gmail.com',
  first_name: 'Gilson',
  last_name: 'Djassan',
  age: 25,
  number: '0687654321',
  adress: '16 Vla Gaudelet, 75011 Paris',
  role: 'doctor'
)
photo_url = 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1696260712/eclbw8adfm12hx4klcxk.jpg'
gilson.photo.attach(io: URI.open(photo_url), filename: 'file1.jpg', content_type: 'image/jpeg')

# Nouveaux médecins
laid = User.create(
  email: 'laid@gmail.com',
  password: 'laid@gmail.com',
  first_name: 'Laid',
  last_name: 'Sereir',
  age: 22,
  number: '0798765432',
  adress: '12 Rue Pierre Lescot, 75001 Paris',
  role: 'doctor'
)
photo_url = 'https://avatars.githubusercontent.com/u/119537150?v=4'
laid.photo.attach(io: URI.open(photo_url), filename: 'file1.jpg', content_type: 'image/jpeg')

remi = User.create(
  email: 'remi@gmail.com',
  password: 'remi@gmail.com',
  first_name: 'Remi',
  last_name: 'Beuch',
  age: 30,
  number: '0690898989',
  adress: '113 Rue Monge, 75005 Paris',
  speciality: 'Psychologue',
  role: 'doctor'
)
photo_url = 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1622564077/uc7xy1tfwbwhq5b96ox3.jpg'
remi.photo.attach(io: URI.open(photo_url), filename: 'file1.jpg', content_type: 'image/jpeg')

guilhem = User.create(
  email: 'guilhem@gmail.com',
  password: 'guilhem@gmail.com',
  first_name: 'Guilhem',
  last_name: 'Hidalgo',
  age: 28,
  number: '0678787878',
  adress: '106 Rue des Dames, 75017 Paris',
  speciality: 'Psychologue',
  role: 'doctor'
)
photo_url = 'https://avatars.githubusercontent.com/u/102871325?v=4'
guilhem.photo.attach(io: URI.open(photo_url), filename: 'file1.jpg', content_type: 'image/jpeg')

thibaud = User.create(
  email: 'thibaud@gmail.com',
  password: 'thibaud@gmail.com',
  first_name: 'Thibaud',
  last_name: 'Maurel',
  age: 27,
  number: '0609090990',
  adress: '73/75 Rue Raymond Losserand, 75014 Paris',
  speciality: 'Psychologue',
  role: 'doctor'
)
photo_url = 'https://avatars.githubusercontent.com/u/30435844?v=4'
thibaud.photo.attach(io: URI.open(photo_url), filename: 'file1.jpg', content_type: 'image/jpeg')

fatma = User.create(
  email: 'fatma@gmail.com',
  password: 'fatma@gmail.com',
  first_name: 'Fatma',
  last_name: 'Bellahouel',
  age: 29,
  number: '0618181818',
  adress: '25 Rue du Dragon, 75006 Paris',
  speciality: 'Psychologue',
  role: 'doctor'
)
photo_url = 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1633599654/tkeypdxsxslog25zampw.jpg'
fatma.photo.attach(io: URI.open(photo_url), filename: 'file1.jpg', content_type: 'image/jpeg')

alexis = User.create(
  email: 'alexis@gmail.com',
  password: 'alexis@gmail.com',
  first_name: 'Alexis',
  last_name: 'Stephan',
  age: 64,
  number: '0676535212',
  adress: '17 Av. Bosquet, 75007 Paris',
  speciality: 'Psychologue',
  role: 'doctor'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_alexis_vieux.jpg')
alexis.photo.attach(io: File.open(image_path), filename: 'pp_alexis_vieux.jpg', content_type: 'image/jpeg')

francois = User.create(
  email: 'francois@gmail.com',
  password: 'francois@gmail.com',
  first_name: 'francois',
  last_name: 'Villalba',
  age: 46,
  number: '0673445212',
  adress: '85 Av. Emile Zola, 75015 Paris',
  speciality: 'Psychologue',
  role: 'doctor'
)
photo_url = 'https://avatars.githubusercontent.com/u/145837598?v=4'
francois.photo.attach(io: URI.open(photo_url), filename: 'file1.jpg', content_type: 'image/jpeg')

salma = User.create(
  email: 'salma@gmail.com',
  password: 'salma@gmail.com',
  first_name: 'salma',
  last_name: 'Zakha',
  age: 23,
  number: '0733147702',
  adress: '31 Rue de Chabrol, 75010 Paris',
  speciality: 'Psychologue',
  role: 'doctor'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_salma_psy.jpg')
salma.photo.attach(io: File.open(image_path), filename: 'pp_salma.jpg', content_type: 'image/jpeg')

# Création des patients
puts 'Creating Patients...'

# Utilisateurs déjà existants
galaad = User.create(
  email: 'galaad@gmail.com',
  password: 'galaad@gmail.com',
  first_name: 'Galaad',
  last_name: 'Michaud',
  age: 17,
  number: '0612345678',
  adress: '17 Rue Dupetit-Thouars, 75003 Paris',
  speciality: 'Psychologue',
  role: 'patient'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_galaad_enfant.jpg')
galaad.photo.attach(io: File.open(image_path), filename: 'pp_galaad_enfant.jpg', content_type: 'image/jpeg')

emeraude = User.create(
  email: 'emeraude@gmail.com',
  password: 'emeraude@gmail.com',
  first_name: 'Emeraude',
  last_name: 'Chenille',
  age: 13,
  number: '0798738329',
  adress: '2 bis Rue du Dr Potain, 75019 Paris',
  role: 'patient'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_emeraude_enfant.jpg')
emeraude.photo.attach(io: File.open(image_path), filename: 'pp_emeraude_enfant.jpg', content_type: 'image/jpeg')

ahmed = User.create(
  email: 'ahmed@gmail.com',
  password: 'ahmed@gmail.com',
  first_name: 'Ahmed',
  last_name: 'Salah',
  age: 16,
  number: '0798765412',
  adress: '29 Rue de Lourmel, 75015 Paris',
  role: 'patient'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_ahmed_enfant.jpg')
ahmed.photo.attach(io: File.open(image_path), filename: 'pp_ahmed_enfant.jpg', content_type: 'image/jpeg')

fred = User.create(
  email: 'fred@gmail.com',
  password: 'fred@gmail.com',
  first_name: 'Fred',
  last_name: 'Régent',
  age: 12,
  number: '0783903345',
  adress: '34 Av. George V, 75008 Paris',
  role: 'patient'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_fred_enfant.jpg')
fred.photo.attach(io: File.open(image_path), filename: 'pp_fred_enfant.jpg', content_type: 'image/jpeg')

antoine = User.create(
  email: 'antoine@gmail.com',
  password: 'antoine@gmail.com',
  first_name: 'Antoine',
  last_name: 'Villalba',
  age: 19,
  number: '0676453003',
  adress: '14 Av. Sainte-Foy, 92200 Neuilly-sur-Seine',
  role: 'patient'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_antoine_enfant.jpg')
antoine.photo.attach(io: File.open(image_path), filename: 'pp_antoine_enfant.jpg', content_type: 'image/jpeg')

andre = User.create(
  email: 'andre@gmail.com',
  password: 'andre@gmail.com',
  first_name: 'Andre',
  last_name: 'Leroy',
  age: 13,
  number: '0628319321',
  adress: '32 Rue Lepic, 75018 Paris',
  role: 'patient'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_andre_enfant.jpg')
andre.photo.attach(io: File.open(image_path), filename: 'pp_andre_enfant.jpg', content_type: 'image/jpeg')

thomas = User.create(
  email: 'thomas@gmail.com',
  password: 'thomas@gmail.com',
  first_name: 'Thomas',
  last_name: 'Traore',
  age: 17,
  number: '0609675732',
  adress: '10 Rue Puget, 75018 Paris',
  role: 'patient'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_thomas_enfant.jpg')
thomas.photo.attach(io: File.open(image_path), filename: 'pp_thomas_enfant.jpg', content_type: 'image/jpeg')

guillaume = User.create(
  email: 'guillaume@gmail.com',
  password: 'guillaume@gmail.com',
  first_name: 'Guillaume',
  last_name: 'Larzillière',
  age: 11,
  number: '0609675452',
  adress: '10 Rue Puget, 75018 Paris',
  role: 'patient'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_guillaume_enfant.jpg')
guillaume.photo.attach(io: File.open(image_path), filename: 'pp_guillaume_enfant.jpg', content_type: 'image/jpeg')

marine = User.create(
  email: 'marine@gmail.com',
  password: 'marine@gmail.com',
  first_name: 'Marine',
  last_name: 'Moreau',
  age: 9,
  number: '0711675452',
  adress: '13 Rue des Lions Saint-Paul, 75004 Paris',
  role: 'patient'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_marine_enfant.jpg')
marine.photo.attach(io: File.open(image_path), filename: 'pp_marine_enfant.jpg', content_type: 'image/jpeg')

amelia = User.create(
  email: 'amelia@gmail.com',
  password: 'amelia@gmail.com',
  first_name: 'amelia',
  last_name: 'Lelouche',
  age: 19,
  number: '0656967452',
  adress: '6 Rue Neuve Popincourt, 75011 Paris',
  role: 'patient'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_amelia_enfant.jpg')
amelia.photo.attach(io: File.open(image_path), filename: 'pp_amelia_enfant.jpg', content_type: 'image/jpeg')

mahmoud = User.create(
  email: 'mahmoud@gmail.com',
  password: 'mahmoud@gmail.com',
  first_name: 'Lajimi',
  last_name: 'Mahmoud',
  age: 14,
  number: '0655389052',
  adress: '11 Rue Baron, 75017 Paris',
  role: 'patient'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_mahmoud_enfant.jpg')
mahmoud.photo.attach(io: File.open(image_path), filename: 'pp_mahmoud_enfant.jpg', content_type: 'image/jpeg')

nathan = User.create(
  email: 'nathan@gmail.com',
  password: 'nathan@gmail.com',
  first_name: 'nathan',
  last_name: 'Benette',
  age: 15,
  number: '0609675452',
  adress: '10 Rue Puget, 75018 Paris',
  role: 'patient'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_nathan_enfant.jpg')
nathan.photo.attach(io: File.open(image_path), filename: 'pp_nathan_enfant.jpg', content_type: 'image/jpeg')

lisa = User.create(
  email: 'lisa@gmail.com',
  password: 'lisa@gmail.com',
  first_name: 'lisa',
  last_name: 'Jenkins',
  age: 18,
  number: '0711217852',
  adress: '15 Rue Albéric Magnard, 75116 Paris',
  role: 'patient'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_lisa_enfant.jpg')
lisa.photo.attach(io: File.open(image_path), filename: 'pp_lisa_enfant.jpg', content_type: 'image/jpeg')

titouan = User.create(
  email: 'titouan@gmail.com',
  password: 'titouan@gmail.com',
  first_name: 'titouan',
  last_name: 'Evans',
  age: 14,
  number: '0609675386',
  adress: '8 Rue Paul Hervieu, 75015 Paris',
  role: 'patient'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_titouan_enfant.jpg')
titouan.photo.attach(io: File.open(image_path), filename: 'pp_titouan_enfant.jpg', content_type: 'image/jpeg')

emma = User.create(
  email: 'emma@gmail.com',
  password: 'emma@gmail.com',
  first_name: 'emma',
  last_name: 'Davidson',
  age: 12,
  number: '0647275452',
  adress: '7 Pl. de Fontenoy, 75007 Paris',
  role: 'patient'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_emma_enfant.jpg')
emma.photo.attach(io: File.open(image_path), filename: 'pp_emma_enfant.jpg', content_type: 'image/jpeg')

julie = User.create(
  email: 'julie@gmail.com',
  password: 'julie@gmail.com',
  first_name: 'julie',
  last_name: 'Lefèvre',
  age: 14,
  number: '0613427545',
  adress: '8B Rue Monmory, 94300 Vincennes',
  role: 'patient'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_julie_enfant.jpg')
julie.photo.attach(io: File.open(image_path), filename: 'pp_julie_enfant.jpg', content_type: 'image/jpeg')

morgane = User.create(
  email: 'morgane@gmail.com',
  password: 'morgane@gmail.com',
  first_name: 'morgane',
  last_name: 'Moreau',
  age: 13,
  number: '0607555452',
  adress: '111 Rue Sadi Carnot, 93170 Bagnolet',
  role: 'patient'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_morgane_enfant.jpg')
morgane.photo.attach(io: File.open(image_path), filename: 'pp_morgane_enfant.jpg', content_type: 'image/jpeg')

maxime = User.create(
  email: 'maxime@gmail.com',
  password: 'maxime@gmail.com',
  first_name: 'maxime',
  last_name: 'Mercier',
  age: 18,
  number: '0749663352',
  adress: '10 Rue du Château d eau, 75010 Paris',
  role: 'patient'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_maxime_enfant.jpg')
maxime.photo.attach(io: File.open(image_path), filename: 'pp_maxime_enfant.jpg', content_type: 'image/jpeg')

stephanie = User.create(
  email: 'stephanie@gmail.com',
  password: 'stephanie@gmail.com',
  first_name: 'stephanie',
  last_name: 'Reynaud',
  age: 18,
  number: '0609674402',
  adress: '12 Rue de Beaune, 75007 Paris',
  role: 'patient'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_stephanie_enfant.jpg')
stephanie.photo.attach(io: File.open(image_path), filename: 'pp_stephanie_enfant.jpg', content_type: 'image/jpeg')

rayhan = User.create(
  email: 'rayhan@gmail.com',
  password: 'rayhan@gmail.com',
  first_name: 'rayhan',
  last_name: 'Chaoui',
  age: 16,
  number: '0609666342',
  adress: '1 Rue de la Clef des Champs, 93400 Saint-Ouen-sur-Seine',
  role: 'patient'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_rayhan_enfant.jpg')
rayhan.photo.attach(io: File.open(image_path), filename: 'pp_rayhan_enfant.jpg', content_type: 'image/jpeg')

iness = User.create(
  email: 'iness@gmail.com',
  password: 'iness@gmail.com',
  first_name: 'iness',
  last_name: 'Ben Youssef',
  age: 20,
  number: '0709345452',
  adress: '64 Rue Jules Guesde, 92300 Levallois-Perret',
  role: 'patient'
)
image_path = Rails.root.join('app', 'assets', 'images', 'pp_iness_enfant.jpg')
iness.photo.attach(io: File.open(image_path), filename: 'pp_iness_enfant.jpg', content_type: 'image/jpeg')


# Création des réservations passées
puts 'Creating PAST Reservations...'

46.times do
  Reservation.create(
    date: Faker::Date.between(from: '2023-11-10', to: '2023-12-17'),
    price: 50,
    doctor_id: User.where(role: 'doctor').first.id,
    patient_id: User.where(role: 'patient').sample.id
  )
end

# Création des réservations futures
puts 'Creating UPCOMING Reservations...'

120.times do
  Reservation.create(
    date: Faker::Date.between(from: '2023-12-10', to: '2024-01-10'),
    price: 50,
    doctor_id: User.where(role: 'doctor').first.id,
    patient_id: User.where(role: 'patient').sample.id
  )
end

puts 'Seed completed!'

# User.create(email: "emeraude@gmail.com", password: "emeraude@gmail.com", first_name: "Emeraude", last_name: "Chenille", age: 23, number: "0798738329", adress: "2 bis Rue du Dr Potain, 75019 Paris", role: "patient")
# User.create(email: "ahmed@gmail.com", password: "ahmed@gmail.com", first_name: "Ahmed", last_name: "Salah", age: 20, number: "0798765412", adress: "Foyer Maurice Maignen, 29 Rue de Lourmel, 75015 Paris", role: "patient")
# User.create(email: "fred@gmail.com", password: "fred@gmail.com", first_name: "Fred", last_name: "Régent", age: 26, number: "0796543532", adress: "546 rue de la paix, 77300", role: "patient")
# User.create(email: "andre@gmail.com", password: "andre@gmail.com", first_name: "Andre", last_name: "Leroy", age: 24, number: "0783903345", adress: "34 Av. George V, 75008 Paris", role: "patient")
# User.create(email: "francois@gmail.com", password: "francois@gmail.com", first_name: "François", last_name: "Villalba", age: 43, number: "0676453003", adress: "14 Av. Sainte-Foy, 92200 Neuilly-sur-Seine", role: "patient")
# User.create(email: "dalina@gmail.com", password: "dalina@gmail.com", first_name: "Dalina", last_name: "Lesourd", age: 37, number: "0628319321", adress: "32 Rue Lepic, 75018 Paris", role: "patient")
# User.create(email: "thomas@gmail.com", password: "thomas@gmail.com", first_name: "Thomas", last_name: "Traore", age: 99, number: "0609675732", adress: "10 Rue Puget, 75018 Paris", role: "patient")
# User.create(email: "guillaume@gmail.com", password: "guillaume@gmail.com", first_name: "Guillaume", last_name: "Larzillière", age: 20, number: "0609675452", adress: "10 Rue Puget, 75018 Paris", role: "patient")

# p "Creating PAST Reservation for galaad@gmail.com..."

# Reservation.create(date: "2000-12-12", price: 50, doctor_id: User.where(role: 'doctor').first.id, patient_id: User.where(role: 'patient')[0].id)
# Reservation.create(date: "2000-11-30", price: 50, doctor_id: User.where(role: 'doctor').first.id, patient_id: User.where(role: 'patient')[1].id)
# Reservation.create(date: "2000-08-28", price: 50, doctor_id: User.where(role: 'doctor').first.id, patient_id: User.where(role: 'patient')[2].id)
# Reservation.create(date: "2000-02-04", price: 50, doctor_id: User.where(role: 'doctor').first.id, patient_id: User.where(role: 'patient')[3].id)

# p "Creating UPCOMING Reservation for galaad@gmail.com..."

# Reservation.create(date: "2025-12-09", price: 50, doctor_id: User.where(role: 'doctor').first.id, patient_id: User.where(role: 'patient')[4].id)
# Reservation.create(date: "2025-10-30", price: 50, doctor_id: User.where(role: 'doctor').first.id, patient_id: User.where(role: 'patient')[5].id)
# Reservation.create(date: "2025-04-25", price: 50, doctor_id: User.where(role: 'doctor').first.id, patient_id: User.where(role: 'patient')[6].id)
# Reservation.create(date: "2025-06-23", price: 50, doctor_id: User.where(role: 'doctor').first.id, patient_id: User.where(role: 'patient')[7].id)

# p "Creating PAST Reservation for remi@gmail.com..."

# Reservation.create(date: "2000-12-12", price: 50, doctor_id: User.where(role: 'doctor').second.id, patient_id: User.where(role: 'patient')[0].id)
# Reservation.create(date: "2000-11-30", price: 50, doctor_id: User.where(role: 'doctor').second.id, patient_id: User.where(role: 'patient')[1].id)
# Reservation.create(date: "2000-08-28", price: 50, doctor_id: User.where(role: 'doctor').second.id, patient_id: User.where(role: 'patient')[2].id)
# Reservation.create(date: "2000-02-04", price: 50, doctor_id: User.where(role: 'doctor').second.id, patient_id: User.where(role: 'patient')[3].id)

# p "Creating UPCOMING Reservation for remi@gmail.com..."

# Reservation.create(date: "2025-12-09", price: 50, doctor_id: User.where(role: 'doctor').second.id, patient_id: User.where(role: 'patient')[4].id)
# Reservation.create(date: "2025-10-30", price: 50, doctor_id: User.where(role: 'doctor').second.id, patient_id: User.where(role: 'patient')[5].id)
# Reservation.create(date: "2025-04-25", price: 50, doctor_id: User.where(role: 'doctor').second.id, patient_id: User.where(role: 'patient')[6].id)
# Reservation.create(date: "2025-06-23", price: 50, doctor_id: User.where(role: 'doctor').second.id, patient_id: User.where(role: 'patient')[7].id)
# Reservation.create(date: "2027-06-23", price: 50, doctor_id: User.where(role: 'doctor').second.id, patient_id: User.where(role: 'patient')[8].id)
# p "Seed created!"
