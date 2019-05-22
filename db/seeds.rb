# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Contract.destroy_all

url = "https://res.cloudinary.com/dbgxfv2sg/image/upload/v1558533341/gzojlsq4ao48kk16cso6.jpg"
ben = Contract.new(nickname: 'Ben', description: 'un bel enfoiré', price: '40 000$', rank: 'master', user_id: 1)
ben.remote_photo_url = url
ben.save

url = "https://res.cloudinary.com/dbgxfv2sg/image/upload/v1558538830/v23uwcxzghl9jozx4tlj.jpg"
mamba = Contract.new(nickname: 'Mamaba', description: 'International assassin', price: '100000$', rank: 'pro', user_id: 56)
mamba.remote_photo_url = url
mamba.save

