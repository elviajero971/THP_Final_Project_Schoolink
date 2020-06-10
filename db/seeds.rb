# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
UserRating.destroy_all
User.destroy_all
Subject.destroy_all
SubCategory.destroy_all
Category.destroy_all


# Admin
User.create(
  nickname: "WhiteBoard",
  description: "Vous êtes l'administrateur",
  email: "whiteboard.thp@yopmail.com",
  age: 35,
  password: "123456",
  is_admin: true
)

Category.create(name: "Musique")
Category.create(name: "Développement Web")
Category.create(name: "Science")
Category.create(name: "Sport")

SubCategory.create(name: "Piano", category_id: Category.find_by(name:"Musique").id)
SubCategory.create(name: "Violon", category_id: Category.find_by(name:"Musique").id)
SubCategory.create(name: "Trompette", category_id: Category.find_by(name:"Musique").id)
SubCategory.create(name: "Mathématiques", category_id: Category.find_by(name:"Science").id)
SubCategory.create(name: "Physique", category_id: Category.find_by(name:"Science").id)
SubCategory.create(name: "Chimie", category_id: Category.find_by(name:"Science").id)
SubCategory.create(name: "Course à pied", category_id: Category.find_by(name:"Sport").id)
SubCategory.create(name: "Football", category_id: Category.find_by(name:"Sport").id)
SubCategory.create(name: "Ping Pong", category_id: Category.find_by(name:"Sport").id)
SubCategory.create(name: "JS", category_id: Category.find_by(name:"Développement Web").id)
SubCategory.create(name: "HTML5", category_id: Category.find_by(name:"Développement Web").id)
SubCategory.create(name: "CSS3", category_id: Category.find_by(name:"Développement Web").id)

Subject.create(title: "Apprendre le Piano", content: "Pour apprendre le piano il faut aller sur ce lien", user_id: User.last.id, difficulty: "Intermédiaire",sub_category_id: SubCategory.find_by(name:"Piano").id)
Subject.create(title: "HTML5 & Cie", content: "Pour apprendre le HTML5 il faut aller sur ce lien", user_id: User.first.id, difficulty: "Facile",sub_category_id: SubCategory.find_by(name:"HTML5").id)
Subject.create(title: "La chimie ça déboite", content: "Pour apprendre la chimie il faut être crazy", user_id: User.last.id, difficulty: "Difficile",sub_category_id: SubCategory.find_by(name:"Chimie").id)
Subject.create(title: "Tout sur la coupe du monde 98", content: "Culture gééééénéraleee sur la coupe du monde 98", user_id: User.last.id, difficulty: "Facile",sub_category_id: SubCategory.find_by(name:"Football").id)
Subject.create(title: "Apprendre à jouer au Ping Pong comme un chinois", content: "Tu veux être un dingue de Ping Pong ? Clique ici !", user_id: User.first.id, difficulty: "Difficile",sub_category_id: SubCategory.find_by(name:"Ping Pong").id)

UserRating.create(user_rating: 2, user_id: User.first.id, subject_id: Subject.first.id)
UserRating.create(user_rating: 3, user_id: User.first.id, subject_id: Subject.last.id)
UserRating.create(user_rating: 5, user_id: User.first.id, subject_id: Subject.find_by(title:"Tout sur la coupe du monde 98").id)
UserRating.create(user_rating: 1, user_id: User.first.id, subject_id: Subject.find_by(title:"HTML5 & Cie").id)

