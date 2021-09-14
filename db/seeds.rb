User.destroy_all
Workout.destroy_all
Review.destroy_all
Product.destroy_all
Productreview.destroy_all


user1 = User.create(name: "Raging Bull", password: "RAGE", image_url: "https://cdn.shopify.com/s/files/1/2040/0303/products/Cool_Serious_Buff_Red_Bull_with_Horns_Cartoon_-_Upperbody_657435830_grande.jpg?v=1518308817")

user2 = User.create(name: "Matt", password: "1234", image_url: "https://jbhnews.com/wp-content/uploads/2019/12/get-ripped-fast-shredded-quickly-1.png")

user3 = User.create(name: "Brittany", password: "FreeBritney", image_url: "https://skinnyms.com/wp-content/uploads/2017/12/7-Insane-HIIT-Leg-Workouts-With-Weights-for-Sleek-Sexy-Legs-750x500.jpg")

workout1 = Workout.create(name: "Booty Buster", description: "Bust your butt for the summer!", 
image_url: "https://www.mensjournal.com/wp-content/uploads/mf/_main_goblet-squat_1.jpg?quality=86&strip=all")

workout2 = Workout.create(name: "Ab Annihilation", description: "Destroy your abs!", 
image_url: "https://health.clevelandclinic.org/wp-content/uploads/sites/3/2021/05/bicycleAbCruches-1216161742_770x553.jpg",)

workout3 = Workout.create(name: "Shoulder Shredder", description: "Boulder shoulders!", 
image_url: "https://fitnessvolt.com/wp-content/uploads/2017/01/best-shoulder-exercise.jpg")

workout4 = Workout.create(name: "Back Builder", description: "Become a silverback gorilla!", 
image_url: "https://www.muscleandfitness.com/wp-content/uploads/2020/07/Mr-Olympia-and-Professional-Bodybuilder-Phil-Heath-Showing-His-Back-Muscles.jpg?quality=86&strip=all",)

workout5 = Workout.create(name: "Calf Killer", description: "You may not be able to walk tomorrow!", 
image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRATip7PLf4exTuZAVmP_TGACCgGJ1hYSZ2e5GP_-YZtGKmxt0d5UKQA3A4wFlBWwjT-k&usqp=CAU",)

workout6 = Workout.create(name: "HIIT Heaven", description: "Insane cardio!", 
image_url: "https://lmimirror3pvr.azureedge.net/static/media/12419/3ba321af-9388-46d2-91d5-7b86a67b8c45/hiit_960x540-v2.jpg",)

workout7 = Workout.create(name: "Push-up Power", description: "Chest explosion!", 
image_url: "https://madbarzpictures.blob.core.windows.net/madbarzpictures/image7f23201b-005c-497f-ac73-b4f33313311f.png",)

workout8 = Workout.create(name: "Boxing Burn", description: "Feel the Burn!", 
image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVKlsNtQiy-_FsbXSfepcA9avN6cvjQNsZDilGXLMYutBqTqWxeM6YJeywseTRg-AIed0&usqp=CAU",)

workout9 = Workout.create(name: "Jumprope Jitters", description: "Footwork and cardio crazy!", 
image_url: "https://i5.walmartimages.com/asr/d4626cd8-2fbf-4c7e-9125-b3b480ea8dd8.2e3c2c5ecf26a0a793431e2144639cfa.jpeg?odnWidth=612&odnHeight=612&odnBg=ffffff",)

workout10 = Workout.create(name: "Jumping Jack", description: "Get moving!", 
image_url: "https://i.ytimg.com/vi/1b98WrRrmUs/maxresdefault.jpg",)

workout11 = Workout.create(name: "Super sprints", description: "Push your hardest!", 
image_url: "https://cdn.shopify.com/s/files/1/0062/5532/files/i_stock_male_sprinter_image_xlg_size_6eec9ade-abd6-4641-af37-dd92b0680a5d.jpg?v=1523547218",)

workout12 = Workout.create(name: "Circut Circus", description: "Keep going until failure!", 
image_url: "https://darebee.com/images/workouts/quick-hiit-workout.jpg",)

Review.create(user_id: user1.id, workout_id: workout1.id, comment: "Kicked my butt!", rating:7)

Review.create(user_id: user2.id, workout_id: workout1.id, comment: "Too difficult!", rating:4)

Review.create(user_id: user3.id, workout_id: workout1.id, comment: "What a pump!", rating:10)

product1 = Product.create(name: "Resistance Bands Set", description: "Full body pump anywhere you go!", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTXrlyisB9ikEsY8G4BV0g-4TgZF1wmYcAwA&usqp=CAU", price:30)

product2 = Product.create(name: "Raging Bull Energy Drink", description: "Go Insane!", image_url: "https://pbs.twimg.com/profile_images/545921868012986368/Ebp4QyWd.jpeg", price:5)

product3 = Product.create(name: "Speed Jump Rope", description: "Faster feet, faster hands!", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx9S4_l_1dEZDo_aVaI-MABC0wJM0YhcaXwA&usqp=CAU", price:35)

product4 = Product.create(name: "Iron Arms Forearm Trainer", description: "Increase your grip strength!", image_url: "https://m.media-amazon.com/images/I/51YF0op1pTS._AC_SX450_.jpg", price:25)

product5 = Product.create(name: "Footwork Ladder", description: "Increase your Agility!", image_url: "https://i5.walmartimages.com/asr/207bdf52-733f-453d-9c05-7ea6b784a385.3a289faab8ff295684ee601543116c3a.jpeg", price:15)

product6 = Product.create(name: "Bowflex Adjustable Dumbbells", description: "The best Dumbbells Ever!", image_url: "https://s.alicdn.com/@sc04/kf/H9261effddf0c4c249b19e30219d1fdd3W.jpg_300x300.jpg", price:400)

product7 = Product.create(name: "Comfort Yoga Mat", description: "Very Comfortable Mat!", image_url: "https://www.si.com/review/wp-content/uploads/2021/03/BalanceFrom-yoga-mat-si.jpg", price:20)

product8 = Product.create(name: "Creatine Monohydrate", description: "Natural Pump for your Muscles!", image_url: "https://m.media-amazon.com/images/I/61HK8PiI5qL._AC_SL1500_.jpg", price:25)

product9 = Product.create(name: "Protein Powder", description: "Get Maximum Results!", image_url: "https://m.media-amazon.com/images/I/71-XMvdk5vL._AC_SX425_.jpg", price:45)

product10 = Product.create(name: "Branch Chain Amino Acids", description: "Recover Faster!", image_url: "https://cdn.shopify.com/s/files/1/0877/6064/products/BCAA5000_Caps_30SERV_2_-_1000x1000_f68951db-6cc0-4f5e-a779-1333c4f5fff4_1400x.jpg?v=1576084007", price:15)

product11 = Product.create(name: "Boxing Reflex Bag", description: "Increase Hand Speed and Timing!", image_url: "https://cdn.shopify.com/s/files/1/0062/7785/7395/products/image_3fffa985-2737-4b39-8e5f-7ea445854ed1_1024x1024@2x.jpg?v=1609345228", price:150)

product12 = Product.create(name: "Boxing Gloves 16oz", description: "Unleash your Power!", image_url: "https://m.media-amazon.com/images/I/91beWyWtPPL._AC_SL1500_.jpg", price:55)

Productreview.create(product_id: product1.id, comment: "Unbelieveable Pump", rating:10)

Productreview.create(product_id: product2.id, comment: "Couldn't feel my face", rating:9)

Productreview.create(product_id: product3.id, comment: "Excellent Jump Rope", rating:10)

Productreview.create(product_id: product4.id, comment: "Amazing Burn", rating:10)

Productreview.create(product_id: product5.id, comment: "It works but could be made better", rating:6)

Productreview.create(product_id: product6.id, comment: "Best Dumbbell Ever but overpriced", rating:7)

Productreview.create(product_id: product7.id, comment: "Super foamy and comfortable", rating:8)

Productreview.create(product_id: product8.id, comment: "Noticeable gains!", rating:7)

Productreview.create(product_id: product9.id, comment: "Delicious post workout shakes!", rating:7)

Productreview.create(product_id: product10.id, comment: "Recovered faster for sure", rating:10)

Productreview.create(product_id: product11.id, comment: "Already faster", rating:10)

Productreview.create(product_id: product12.id, comment: "Great Gloves", rating:9)

puts "done seeding"

