# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all


# Admin
User.create(
  nickname: "WhiteBoard",
  description: "Vous êtes l'administrateur",
  email: "whiteboard.thp@yopmail.com",
  age: 35,
  password: "123456",
  is_admin: true
)

# User 1
User.create(
  nickname: "Hervé Magnan",
  description: "J'aimerais apprendre à parler espagnol pour pouvoir voyager en Amérique du Sud",
  email: "herve.magnan@yopmail.com",
  age: 29,
  password: "herve29",
)

# User 2
User.create(
  nickname: "Jean-Claude Doux",
  description: "J'aimerais apprendre la guitare  électrique  pour conquérir le coeur de ma douce",
  email: "jean-claude.doux@yopmail.com",
  age: 54,
  password: "jeanclaude54",
)

# User 3
User.create(
  nickname: "Brigitte Gallet",
  description: "Je désire partager ma passion pour la permaculture",
  email: "brigitte.gallet@yopmail.com",
  age: 60,
  password: "brigittegallet60",
)

# User 4
User.create(
  nickname: "el loco",
  description: "Je suis fan de yoga et j'aimerais en apprendre plus mais également partager mes connaissances dans le domaine.",
  email: "el-loco.67@yopmail.com",
  age: 67,
  password: "eloco67",
)

# User 5
User.create(
  nickname: "Marie Durand",
  description: "Je suis toujours à la recherche de nouvelles connaissances!",
  email: "marie.durand@yopmail.com",
  age: 22,
  password: "mariedurand22",
)