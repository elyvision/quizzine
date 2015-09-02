# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# contenue du seed
#1 User *4
#2 Quiz  *1
#3 Questions  *4
#4 Answer

user1 = User.create!({
  name: "Elie",
  email: "elie.marot@gmail.com",
  password: "12345678"
})
puts "created #{user1.name}"


quizz1 = Quizz.create!({
  theme: "Française"
})
puts "created #{quizz1.theme}"

question1 = Question.create!({
  sujet: "Quelle ingredient y a t'il dans la choucroute?",
  quizz_id: quizz1.id
})
puts "created #{question1.sujet}"


answer1 = Answer.create!({
  proposition: "porc",
  good_not_good: true,
  question_id: question1.id
})
puts "created #{answer1.proposition}"


answer2 = Answer.create!({
  proposition: "canard",
  good_not_good: false,
  question_id: question1.id
})
puts "created #{answer2.proposition}"


answer3 = Answer.create!({
  proposition: "purée",
  good_not_good: false,
  question_id: question1.id
})
puts "created #{answer3.proposition}"



answer4 = Answer.create!({
  proposition: "saucisses de Toulouse",
  good_not_good: false,
  question_id: question1.id
})
puts "created #{answer4.proposition}"

#///////////////////////////////////////



user2 = User.create!({
  name: "Wilsock",
  email: "Wilsock1940@armyspy.com",
  password: "12345678"
})


quizz2 = Quizz.create!({
  theme: "Française"
})



question1 = Question.create!({
  sujet: "Quelle ingredient y a t'il dans le Cassoulet?",
  quizz_id: quizz2.id
})



answer1 = Answer.create!({
  proposition: "carotte",
  good_not_good: true,
  question_id: question2.id
})



answer2 = Answer.create!({
  proposition: "poulet",
  good_not_good: false,
  question_id: question2.id
})


answer3 = Answer.create!({
  proposition: "saucisses polonaises",
  good_not_good: false,
  question_id: question2.id
})


answer4 = Answer.create!({
  proposition: "pomme de terre",
  good_not_good: false,
  question_id: question2.id
})


#///////////////////////////////////////


user3 = User.create!({
  name: "paul",
  email: "paul1940@dayrep.com",
  password: "12345678"
})


quizz3 = Quizz.create!({
  theme: "Française"
})



question3 = Question.create!({
  sujet: "Quelle ingredient y a t'il dans le Cuissot de cochon de lait?",
  quizz_id: quizz3.id
})



answer1 = Answer.create!({
  proposition: "vin blanc",
  good_not_good: true,
  question_id: question3.id
})



answer2 = Answer.create!({
  proposition: "vin jaune",
  good_not_good: false,
  question_id: question3.id
})


answer3 = Answer.create!({
  proposition: "oignon",
  good_not_good: false,
  question_id: question3.id
})


answer4 = Answer.create!({
  proposition: "crème fraîche",
  good_not_good: false,
  question_id: question3.id
})

#///////////////////////////////////////


user4 = User.create!({
  name: "paul",
  email: "paul1940@dayrep.com",
  password: "12345678"
})


quizz4 = Quizz.create!({
  theme: "Française"
})



question4 = Question.create!({
  sujet: "Quelle ingredient y a t'il dans le Coq au vin jaune?",
  quizz_id: quizz4.id
})



answer1 = Answer.create!({
  proposition: "vin jaune",
  good_not_good: true,
  question_id: question4.id
})



answer2 = Answer.create!({
  proposition: "saindoux",
  good_not_good: false,
  question_id: question4.id
})


answer3 = Answer.create!({
  proposition: "laurier",
  good_not_good: false,
  question_id: question4.id
})


answer4 = Answer.create!({
  proposition: "saucisses polonaises",
  good_not_good: false,
  question_id: question4.id
})

#///////////////////////////////////////
