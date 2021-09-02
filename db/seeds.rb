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
image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiMorsTC52ShQ4F_YCaC893nxDl2t6WfFW9jFX5WHenGfxfmBK9TliZqYJj5EaBkVXvdw&usqp=CAU",)

workout3 = Workout.create(name: "Shoulder Shredder", description: "Boulder shoulders!", 
image_url: "https://fitnessvolt.com/wp-content/uploads/2017/01/best-shoulder-exercise.jpg")

workout4 = Workout.create(name: "Back Builder", description: "Become a silverback gorilla!", 
image_url: "https://www.muscleandfitness.com/wp-content/uploads/2020/07/Mr-Olympia-and-Professional-Bodybuilder-Phil-Heath-Showing-His-Back-Muscles.jpg?quality=86&strip=all",)

workout5 = Workout.create(name: "Calf Killer", description: "You may not be able to walk tomorrow!", 
image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRATip7PLf4exTuZAVmP_TGACCgGJ1hYSZ2e5GP_-YZtGKmxt0d5UKQA3A4wFlBWwjT-k&usqp=CAU",)

workout6 = Workout.create(name: "HIIT Heaven", description: "Insane cardio", 
image_url: "https://lmimirror3pvr.azureedge.net/static/media/12419/3ba321af-9388-46d2-91d5-7b86a67b8c45/hiit_960x540-v2.jpg",)

Review.create(user_id: user1.id, workout_id: workout1.id, comment: "Kicked my butt!", rating:7)

Review.create(user_id: user2.id, workout_id: workout1.id, comment: "Too difficult!", rating:4)

Review.create(user_id: user3.id, workout_id: workout1.id, comment: "What a pump!", rating:10)

product1 = Product.create(name: "Resistance Bands Set", description: "Full body pump anywhere you go", image_url: "url", price:20)

product2 = Product.create(name: "Raging Bull Energy Drink", description: "Go Insane!", image_url: "url", price:5)

product3 = Product.create(name: "Speed Jump Rope", description: "Faster feet, faster hands", image_url: "url", price:35)

Productreview.create(product_id: product1.id, comment: "Unbelieveable Pump", rating:10)
puts "done seeding"

