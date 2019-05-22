# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Contract.destroy_all

ben = Contract.new(nickname: 'Ben', description: 'un bel enculé', price: '40 000$', rank: 'master', user_id: 1)
ben.save

mamba = Contract.new(nickname: 'Mamba', description: 'International killer', price: '100000$', rank: 'n°1', user_id: 2)
mamba.save

lechacal = Contract.new(nickname: 'Le Chacal', description: 'unknown', price: '170000$', rank: 'unknown', user_id: 3)
lechacal.save

nikita = Contract.new(nickname: 'Nikita', description: 'French governement agent ', price: '80000€', rank: 'pro', user_id: 4)
nikita.save

leon = Contract.new(nickname: 'Léon', description: 'Infiltration specialist', price: '?', rank: 'ghost', user_id: 5)
leon.save

leduo = Contract.new(nickname: 'Le Duo', description: 'All kind of contract', price: '15000$', rank: 'noob', user_id: 6)
leduo.save
