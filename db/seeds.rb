# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

Joey = User.create(name: "Joseph", username: "luxor", password: "123", email:"Joseph.a.guzzardo@gmail.com")
Joey.avatar.attach(
	io: File.open('./public/avatars/monstera.png'),
	filename: 'monstera.png',
	content_type: 'application/png'
)