# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Contract.destroy_all
ben = Contract.new(nickname: 'Ben', description: 'un bel enfoiré', price: '40 000$', rank: 'master', user_id: 1)
ben.save

mamba = Contract.new(nickname: 'Mamaba', description: 'international assassin', price: '150 000$', rank: 'pro', user_id: 2)
mamba.save

leon = Contract.new(nickname: 'Léon', description: 'unknown', price: '220000€', rank: 'unknown', user_id: 3)
leon.save

nikita = Contract.new(nickname: 'Nikita', description: 'Governement agent', price: '80000$', rank: 'pro', user_id: 4)
nikita.save
