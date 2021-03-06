# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

zipcodes = [29671, 29640, 29642, 29657, 29630]
genders = ["Male", "Female"]
grade_ids = [0,1,2,3,4,5,6,7]
t2 = 12.year.ago
t1 = 2.year.ago
# 4.times do
#   Group.create!(
#     grade_id: grade_ids.sample,
#     name: ["Red", "Blue", "Yellow", "Green"].sample
#   )
# end
User.create!(
  name: "Allen Hughes",
  email: "allen@e.com",
  admin: true,
  password: "password",
  password_confirmation: "password")

# Build 30 families
# rand(30..40).times do
#   puts "building family"
#   @fam = Family.create!()
#   puts "Building head"
#   @fam.guardians.create!(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     head: true,
#     address: Faker::Address.street_address,
#     city: Faker::Address.city,
#     state: "SC",
#     zipcode: zipcodes.sample,
#     phone: [Faker::PhoneNumber.area_code,
#             Faker::PhoneNumber.exchange_code,
#             Faker::PhoneNumber.subscriber_number].join.to_i,
#     email: Faker::Internet.email
#   )


#   rand(1..2).times do
#     puts "building guardian"
#     @fam.guardians.create!(
#       first_name: Faker::Name.first_name,
#       last_name: Faker::Name.last_name,
#       is_head: false,
#       phone: [Faker::PhoneNumber.area_code,
#               Faker::PhoneNumber.exchange_code,
#               Faker::PhoneNumber.subscriber_number].join,
#       email: Faker::Internet.email
#     )
#   end
  
#   rand(1..4).times do
#     puts "Building kid"
#     @invited = ""
#     @lastname = Faker::Name.last_name
#     @alergies = Faker::Boolean.boolean
#     #@alergies_notes = Faker::ChuckNorris.fact
#     @medical = Faker::Boolean.boolean
#     #@medical_issues_notes = Faker::Friends.quote
#     @church_member = Faker::Boolean.boolean
#     if not  @church_member
#       @invited = Faker::LordOfTheRings.character
#     end
#     @fam.kids.create!(
#       first_name: Faker::Name.first_name,
#       last_name: @lastname,
#       birthdate: rand(t2..t1),
#       last_grade_id: grade_ids.sample,
#       gender: genders.sample,
#       buddy_request: ["","","",Faker::Name.name].sample,
#       allergies: @alergies,
#       #allergies_notes: @alergies_notes,
#       medical_issues: @medical,
#       #medical_issues_notes: @medical_issues_notes,
#       can_photograph: Faker::Boolean.boolean,
#       tshirt_size_id: rand(0..4),
#       church_member: @church_member,
#       invited_by: @invited
#     )
#   end
#end
