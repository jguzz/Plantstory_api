# require 'rest-client'
#Destroying every table
Like.destroy_all 
Post.destroy_all 
Story.destroy_all 
Collection.destroy_all
User.destroy_all

#Seed for User
Joey = User.create(name: "Joseph", username: "luxor", password: "123", email:"Joseph.a.guzzardo@gmail.com")
Joey.avatar.attach(
	io: File.open('./public/avatars/monstera.png'),
	filename: 'monstera.png',
	content_type: 'application/png'
)

#Seed for Collection
Indoor = Collection.create(user_id: Joey.id, name: 'Indoor Plants', description: 'These are all of my indoor plants! I hope you like them :3')

#Seed for Plant
#Scraping data from Trefle API 
# key = ENV["TREFLE_KEY"]
# i = 1
# while i <= 389 do 
# 	res = RestClient.get("https://trefle.io/api/plants?page_size=100&page=#{i}&token=#{key}")
# 	data = JSON.parse(res)
# 	data.each do |plant|
# 		Plant.create(common_name: plant["common_name"], latin_name: plant["scientific_name"])
# 	end
# 	i += 1
# end a

#Seed for Story 
MyPothos = Story.create(nickname: 'devil', acquiredOn: DateTime.strptime("07/15/2019", "%m/%d/%Y"),owned: true, common_name: 'Devils Ivy', latin_name: 'epiprenum', collection_id:Indoor.id)
Monstera = Story.create(nickname: 'Zuko', acquiredOn: DateTime.strptime("07/15/2019", "%m/%d/%Y"),owned: true, common_name: 'Swiss cheese plant', latin_name: 'monstera deliciosa', collection_id:Indoor.id)
 Story.create(nickname: 'Tall boy', acquiredOn: DateTime.strptime("07/15/2019", "%m/%d/%Y"),owned: true, common_name: 'Snake Plant', latin_name: 'Sansaveria trifaciata', collection_id:Indoor.id)
Story.create(nickname: 'Trojan', acquiredOn: DateTime.strptime("07/15/2019", "%m/%d/%Y"),owned: true, common_name: 'Rubber Tree', latin_name: 'Ficus Elastica', collection_id:Indoor.id)
Story.create(nickname: 'Pinnochio', acquiredOn: DateTime.strptime("07/15/2019", "%m/%d/%Y"),owned: true, common_name: 'Fiddle Leaf Fig', latin_name: 'Ficus lyrata', collection_id:Indoor.id)

#Seed for Post 
firstPost = Post.create(caption: "This is my pothos, I can't stop propegating him so his vines are small :(", story_id: MyPothos.id)
firstPost.post.attach(
	io: File.open('./public/post/pothos.jpg'),
	filename: 'pothos.jpg',
	content_type: 'application/jpg'
)

#Seed for Like
like = Like.create(user_id: Joey.id, post_id: firstPost.id)