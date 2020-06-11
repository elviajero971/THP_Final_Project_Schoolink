# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
JoinFavSubject.destroy_all
JoinReadSubject.destroy_all
JoinValidateSubject.destroy_all
User.destroy_all
Subject.destroy_all
Category.destroy_all


# User1
User.create(
  nickname: "JeanMichel",
  description: "J'aime l'art et je voudrais apprendre le Yoga",
  email: "whiteboard1@yopmail.com",
  age: 32,
  password: "123456",
  is_admin: false
)
# Admin
User.create(
  nickname: "WhiteAdmin",
  description: "Je suis le king",
  email: "whiteboard.thp@yopmail.com",
  age: 40,
  password: "123456",
  is_admin: true
)
# User2
User.create(
  nickname: "ArianaGrande",
  description: "J'aimerais apprendre à chanter",
  email: "whiteboard2@yopmail.com",
  age: 12,
  password: "123456",
  is_admin: false
)
# User3
User.create(
  nickname: "EnzoLeCorbo",
  description: "Je suis un pro du frisbee",
  email: "whiteboard3@yopmail.com",
  age: 19,
  password: "123456",
  is_admin: false
)
# User4
User.create(
  nickname: "JackyLaChenille",
  description: "Je veux apprendre à lire",
  email: "whiteboard4@yopmail.com",
  age: 90,
  password: "123456",
  is_admin: false
)


Category.create(name: "Musique")
Category.create(name: "Développement Web")
Category.create(name: "Science")
Category.create(name: "Sport")

Subject.create(title: "Apprendre le Piano", content: "Pour apprendre le piano il faut aller sur ce lien", user_id: rand(User.first.id..User.last.id), difficulty: "Intermédiaire",category_id: Category.find_by(name:"Musique").id)
Subject.create(title: "HTML5 & Cie", content: "Pour apprendre le HTML5 il faut aller sur ce lien", user_id: rand(User.first.id..User.last.id), difficulty: "Facile",category_id: Category.find_by(name:"Développement Web").id)
Subject.create(title: "La chimie ça déboite", content: "Pour apprendre la chimie il faut être crazy", user_id: rand(User.first.id..User.last.id), difficulty: "Difficile",category_id: Category.find_by(name:"Science").id)
Subject.create(title: "Tout sur la coupe du monde 98", content: "Culture gééééénéraleee sur la coupe du monde 98", user_id: rand(User.first.id..User.last.id), difficulty: "Facile",category_id: Category.find_by(name:"Sport").id)
Subject.create(title: "Apprendre à jouer au Ping Pong comme un chinois", content: "Tu veux être un dingue de Ping Pong ? Clique ici !", user_id: rand(User.first.id..User.last.id), difficulty: "Difficile",category_id: Category.find_by(name:"Sport").id)
Subject.create(title: "Physique Quantique", content: "Les bases de la physique quantique !", user_id: rand(User.first.id..User.last.id), difficulty: "Difficile",category_id: Category.find_by(name:"Science").id)
Subject.create(title: "Le violon comme si t'étais un pro", content: "Tout savoir sur le violon", user_id: rand(User.first.id..User.last.id), difficulty: "Difficile",category_id: Category.find_by(name:"Musique").id)
