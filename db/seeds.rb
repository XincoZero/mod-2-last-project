# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#require 'faker'

User.destroy_all
Dealership.destroy_all
Repair.destroy_all
Invoice.destroy_all


20.times do
    first = Faker::Name.first_name
    last = Faker::Name.last_name
    community = Faker::Address.community
    user = User.create(first_name: first, last_name: last, location: community)
end


  20.times do
    name = Faker::Vehicle.make
    address = Faker::Address.full_address
    spec = Faker::Vehicle.car_type
    deal = Dealership.create(name: name, location: address, specialty: spec)
  end

  20.times do
    model = Faker::Vehicle.model 
    repairs = ["Transmission", "Oil Change", "Body Work", "Brakes", "Engine"]
    cost = Faker::Number.decimal
    time = Faker::Time.forward
    rep = Repair.create(car_model: model, repair_type: repairs.sample, avg_cost: cost, avg_time: time, user_id: User.all.sample.id, dealership_id: Dealership.all.sample.id)
  end


20.times do
  total = Faker::Number.decimal
  inv = Invoice.create(repair_id: Repair.all.sample.id, total_amount: total)
end





