# require 'rest-client'
#Destroying every table
# Like.destroy_all 
Post.destroy_all 
Story.destroy_all 
Collection.destroy_all
User.destroy_all

#Seed for User
# Joey = User.create(name: "Joseph", username: "luxor", password: "123", email:"Joseph.a.guzzardo@gmail.com")
# Joey.avatar.attach(
# 	io: File.open('./public/avatars/monstera.png'),
# 	filename: 'monstera.png',
# 	content_type: 'application/png'
# )


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
# MyPothos = Story.create(nickname: 'devil', acquiredOn: DateTime.strptime("07/15/2019", "%m/%d/%Y"),owned: true, common_name: 'Devils Ivy', latin_name: 'epiprenum', collection_id:Indoor.id)
# Monstera = Story.create(nickname: 'Zuko', acquiredOn: DateTime.strptime("07/15/2019", "%m/%d/%Y"),owned: true, common_name: 'Swiss cheese plant', latin_name: 'monstera deliciosa', collection_id:Indoor.id)
#  Story.create(nickname: 'Tall boy', acquiredOn: DateTime.strptime("07/15/2019", "%m/%d/%Y"),owned: true, common_name: 'Snake Plant', latin_name: 'Sansaveria trifaciata', collection_id:Indoor.id)
# Story.create(nickname: 'Trojan', acquiredOn: DateTime.strptime("07/15/2019", "%m/%d/%Y"),owned: true, common_name: 'Rubber Tree', latin_name: 'Ficus Elastica', collection_id:Indoor.id)
# Story.create(nickname: 'Pinnochio', acquiredOn: DateTime.strptime("07/15/2019", "%m/%d/%Y"),owned: true, common_name: 'Fiddle Leaf Fig', latin_name: 'Ficus lyrata', collection_id:Indoor.id)

#Seed for Post 
# firstPost = Post.create(caption: "This is my pothos, I can't stop propegating him so his vines are small :(", story_id: MyPothos.id)
# firstPost.post_img.attach(
	# 	io: File.open('./public/post_img/pothos.jpg'),
	# 	filename: 'pothos.jpg',
	# 	content_type: 'application/jpg'
	# )
	
	# secondPost = Post.create(caption: "This is my pothos now, look at it grow!", story_id: MyPothos.id)
	# secondPost.post_img.attach(
		# 	io: File.open('./public/post_img/big_pothos.jpg'),
		# 	filename: 'big_pothos.jpg',
		# 	content_type: 'application/jpg'
		# )
		
		#Seed for Like
		# like = Like.create(user_id: Joey.id, post_id: firstPost.id)
		
		
	joey = User.create(username: 'luxor', password: '123', email: 'joey@gmail.com', name: 'Joey Guzzardo')

	joey.avatar.attach(
	io: File.open('./public/avatars/monstera.png'),
	filename: 'monstera.png',
	content_type: 'application/png'
)

	# Seed for Collection
	Bedroom = Collection.create(user_id: joey.id, name: 'Bedroom Plants', description: 'These are most of my plants! I started collecting plants a year ago... And now I have a big collection, I hope you enjoy!')

	Porch = Collection.create(user_id: joey.id, name: 'Porch Plants', description: 'I have a few plants outside... CHECK EM OUT!')

	triostar = Story.create(acquiredOn: DateTime.strptime("05/15/2020", "%m/%d/%Y"),owned: true, common_name: 'Stromanthe Triostar', latin_name: 'Stromanthe sanguinea', collection_id:Bedroom.id)
	
	SnakePlant = Story.create(acquiredOn: DateTime.strptime("09/03/2019", "%m/%d/%Y"),owned: true, common_name: 'Futura Robusta Snake Plant', latin_name: "Sansevieria Trifasciata ‘Futura Robusta’", collection_id:Bedroom.id)

	Wander = Story.create(acquiredOn: DateTime.strptime("08/03/2019", "%m/%d/%Y"),owned: true, common_name: 'Striped Wandering Jew', latin_name: "Tradescantia zebrina", collection_id:Bedroom.id)

	Red = Story.create(acquiredOn: DateTime.strptime("01/03/2020", "%m/%d/%Y"),owned: true, common_name: 'Red Rubin Basil', latin_name: "Ocimum basilicum 'Purpurascens'", collection_id:Bedroom.id)

	Monstera = Story.create(acquiredOn: DateTime.strptime("12/03/2019", "%m/%d/%Y"),owned: true, common_name: 'Swiss Cheese Plant', latin_name: "Monstera Deliciosa", collection_id:Bedroom.id)

	Basil = Story.create(acquiredOn: DateTime.strptime("11/03/2019", "%m/%d/%Y"),owned: true, common_name: 'Red Rubin Basil (Mother Plant)', latin_name: "Ocimum basilicum 'Purpurascens", collection_id:Porch.id)

	Ficus = Story.create(acquiredOn: DateTime.strptime("08/15/2019", "%m/%d/%Y"),owned: true, common_name: 'Fiddle Leaf Fig', latin_name: "Ficus lyrata", collection_id:Porch.id)

	

post = Post.create(caption: "My brother bought me this triostar for my 23rd birthday", story_id: triostar.id)
	post.post_img.attach(
			io: File.open('./public/post_img/IMG_9355.jpg'),
			filename: 'IMG_9355.jpg',
			content_type: 'application/jpg'
		)

post1=	Post.create(caption: "Hes a baby!", story_id: SnakePlant.id)
	post1.post_img.attach(
			io: File.open('./public/post_img/IMG_5897.jpg'),
			filename: 'IMG_5897.jpg',
			content_type: 'application/jpg'
		)

post2=	Post.create(caption: "Wow so old", story_id: SnakePlant.id)
	post2.post_img.attach(
			io: File.open('./public/post_img/IMG_4137.jpg'),
			filename: 'IMG_4137.jpg',
			content_type: 'application/jpg'
		)

post3=Post.create(caption: "Hes grown a lot!", story_id: Wander.id)
	post3.post_img.attach(
			io: File.open('./public/post_img/IMG_7452.jpg'),
			filename: 'IMG_7452.jpg',
			content_type: 'application/jpg'
		)

post4=	 Post.create(caption: "My propagated basil is flowering!", story_id: Red.id)
	post4.post_img.attach(
			io: File.open('./public/post_img/B25C1759-7D9F-4058-9AB4-7676935D174A_1_105_c.jpg'),
			filename: 'B25C1759-7D9F-4058-9AB4-7676935D174A_1_105_c.jpg',
			content_type: 'application/jpg'
		)

		post5=Post.create(caption: "Its so full now!", story_id: Red.id)
		post5.post_img.attach(
				io: File.open('./public/post_img/IMG_4486.jpg'),
				filename: 'IMG_4486.jpg',
				content_type: 'application/jpg'
			)

		post6=Post.create(caption: "It put out a new leaf!", story_id: Monstera.id)
		post6.post_img.attach(
				io: File.open('./public/post_img/244FB303-1A67-4E4C-A498-70836BA46058_1_105_c.jpg'),
				filename: '244FB303-1A67-4E4C-A498-70836BA46058_1_105_c.jpg',
				content_type: 'application/jpg'
			)

	post7=	Post.create(caption: "A new leaf is coming...", story_id: Monstera.id)
		post7.post_img.attach(
				io: File.open('./public/post_img/ED247AA2-FF62-4FBB-8FBB-0AEDEFF3223B_1_105_c.jpg'),
				filename: 'ED247AA2-FF62-4FBB-8FBB-0AEDEFF3223B_1_105_c.jpg',
				content_type: 'application/jpg'
			)

		post8=	Post.create(caption: "Its growing!", story_id: Monstera.id)
			post8.post_img.attach(
					io: File.open('./public/post_img/99F9909C-D6FF-4ABF-B1E5-856508EDFA21_1_105_c.jpg'),
					filename: '99F9909C-D6FF-4ABF-B1E5-856508EDFA21_1_105_c.jpg',
					content_type: 'application/jpg'
				)

		post9=		Post.create(caption: "So cool", story_id: Monstera.id)
				post9.post_img.attach(
						io: File.open('./public/post_img/D3C150A8-E197-4530-9FA5-A29B01460279_1_105_c.jpg'),
						filename: 'D3C150A8-E197-4530-9FA5-A29B01460279_1_105_c.jpg',
						content_type: 'application/jpg'
					)

	post10	=Post.create(caption: "It's starting to look fuller", story_id: Monstera.id)
		post10.post_img.attach(
				io: File.open('./public/post_img/IMG_5803.jpg'),
				filename: 'IMG_5803.jpg',
				content_type: 'application/jpg'
			)

		post11	=Post.create(caption: "It lost a lot of leaves but it's doing good now!", story_id: Basil.id)
		post11.post_img.attach(
				io: File.open('./public/post_img/IMG_6323.jpg'),
				filename: 'IMG_6323.jpg',
				content_type: 'application/jpg'
			)
		post12	=Post.create(caption: "I love this plant", story_id: Ficus.id)
		post12.post_img.attach(
				io: File.open('./public/post_img/IMG_3424.jpg'),
				filename: 'IMG_3424.jpg',
				content_type: 'application/jpg'
			)

