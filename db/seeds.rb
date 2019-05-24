# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Start destroy'
Booking.destroy_all
Contract.destroy_all
User.destroy_all
puts 'Finish destroy'

puts 'Start seed'
user1 = User.create(email: "annelaure@lewagon.com", password:'azerty')
user2 = User.create(email: "kevin@lewagon.com", password:'azerty')

url = "https://res.cloudinary.com/dbgxfv2sg/image/upload/v1558614364/nlgppmjqzxqvtnx4sfke.jpg"
bond = Contract.new(nickname: '007', description: 'spy', price: '1.500.000$', rank: 'master')
bond.user = user1
bond.remote_photo_url = url
bond.save

url = "https://res.cloudinary.com/dbgxfv2sg/image/upload/v1558538830/v23uwcxzghl9jozx4tlj.jpg"
mamba = Contract.new(nickname: 'Mamaba', description: 'international assassin', price: '150.000$', rank: 'pro')
mamba.user = user1
mamba.remote_photo_url = url
mamba.save


url = "https://res.cloudinary.com/dbgxfv2sg/image/upload/v1558533341/gzojlsq4ao48kk16cso6.jpg"
leon = Contract.new(nickname: 'Léon', description: 'unknown', price: '220.000€', rank: 'unknown')
leon.user = user1
leon.remote_photo_url = url
leon.save

url = "https://res.cloudinary.com/dbgxfv2sg/image/upload/v1558607261/h2p9v7vwtdadrs7byujk.jpg"
nikita = Contract.new(nickname: 'Nikita', description: 'Governement agent', price: '80.000$', rank: 'pro')
nikita.user = user2
nikita.remote_photo_url = url
nikita.save


url = "https://res.cloudinary.com/dbgxfv2sg/image/upload/v1558607223/dpx0kvtkh9mvgxjpooeh.jpg"
lechacal = Contract.new(nickname: 'Le Chacal', description: 'unknown', price: '1.000.000$', rank: 'master')
nikita.user = user2
lechacal.remote_photo_url = url
lechacal.save


url = "https://res.cloudinary.com/dbgxfv2sg/image/upload/v1558607380/ic8hbe8jtvxjwlqbboit.jpg"
leduo = Contract.new(nickname: 'Le Duo', description: 'Any work!', price: '10000$', rank: 'rookies')
nikita.user = user2
leduo.remote_photo_url = url
leduo.save

booking1 = Booking.new(title: 'Prout')
booking1.user = user2
booking1.contract = mamba
booking1.save

booking2 = Booking.new(title: 'Pouet')
booking2.user = user2
booking2.contract = bond
booking2.save

booking3 = Booking.new(title: 'Gnagna')
booking3.user = user1
booking3.contract = nikita
booking3.save

puts 'Finished !'
