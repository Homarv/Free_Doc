# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
    doctor=Doctor.create(first_name:Faker::JapaneseMedia::DragonBall.character, last_name:Faker::Name.last_name,
    speciality:["généraliste", "Chirurgien", "dentiste"].sample, zip_code: "#{rand(1000..9000)}0")
end 

10.times do 
    patient= Patient.create(first_name:Faker::JapaneseMedia::OnePiece.character,last_name:Faker::Name.last_name ) 
end 

20.times do 
rdv= Appointement.create(date:Faker::Date.in_date_period(year: 2020, month: 5) , doctor: Doctor.all.sample, patient: Patient.all.sample)
end