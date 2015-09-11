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
require 'open-uri'
require 'nokogiri'


AnswerUser.destroy_all
User.destroy_all
Quizz.destroy_all
Question.destroy_all
Answer.destroy_all

user1 = User.create!({
  name: "Michelle",
  email: "michelle.marot@gmail.com",
  password: "12345678"
})
puts "created #{user1.name}"


quizz1 = Quizz.create!({
  theme: "Française"
})
puts "created #{quizz1.theme}"

#/////////////////////////////////////////


question1 = Question.create!({
  sujet: "Quel ingredient y a t'il dans la choucroute?",
  quizz_id: quizz1.id
})
puts "created #{question1.sujet}"





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

answer1 = Answer.create!({
  proposition: "porc",
  good_not_good: true,
  question_id: question1.id
})
puts "created #{answer1.proposition}"


answer4 = Answer.create!({
  proposition: "saucisses de Toulouse",
  good_not_good: false,
  question_id: question1.id
})
puts "created #{answer4.proposition}"


#///////////////////////////////////////

question2 = Question.create!({
  sujet: "Quel ingredient y a t'il dans le Cassoulet?",
  quizz_id: quizz1.id
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

answer1 = Answer.create!({
  proposition: "carotte",
  good_not_good: true,
  question_id: question2.id
})

answer4 = Answer.create!({
  proposition: "pomme de terre",
  good_not_good: false,
  question_id: question2.id
})

#///////////////////////////////////////

question3 = Question.create!({
  sujet: "Quel ingredient y a t'il dans le Cuissot de cochon de lait?",
  quizz_id: quizz1.id
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

question4 = Question.create!({
  sujet: "Quel ingredient y a t'il dans le Coq au vin jaune?",
  quizz_id: quizz1.id
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

answer1 = Answer.create!({
  proposition: "vin jaune",
  good_not_good: true,
  question_id: question4.id
})


answer4 = Answer.create!({
  proposition: "saucisses polonaises",
  good_not_good: false,
  question_id: question4.id
})

#////////////////////////////////////////

question5 = Question.create!({
  sujet: " Quel ingredient y a t'il dans la Galettes de poulet?",
  quizz_id: quizz1.id
})




answer2 = Answer.create!({
  proposition: "pommes golden",
  good_not_good: false,
  question_id: question5.id
})


answer3 = Answer.create!({
  proposition: "cannelle",
  good_not_good: false,
  question_id: question5.id
})

answer1 = Answer.create!({
  proposition: "concombre",
  good_not_good: true,
  question_id: question5.id
})

answer4 = Answer.create!({
  proposition: "carotte",
  good_not_good: false,
  question_id: question5.id
})


#///////////////////////////////////////


question7 = Question.create!({
  sujet: "Quel ingredient est present dans la Macaronade sétoise?",
  quizz_id: quizz1.id
})




answer2 = Answer.create!({
  proposition: "sucre glace",
  good_not_good: false,
  question_id: question7.id
})

answer1 = Answer.create!({
  proposition: "tranches de paleron",
  good_not_good: true,
  question_id: question7.id
})


answer3 = Answer.create!({
  proposition: "praliné en pâte",
  good_not_good: false,
  question_id: question7.id
})


answer4 = Answer.create!({
  proposition: "crème pâtissière",
  good_not_good: false,
  question_id: question7.id
})

#////////////////////////////////
question8 = Question.create!({
  sujet: "Quel ingredient est present dans la Tarte tatin?",
  quizz_id: quizz1.id
})




answer2 = Answer.create!({
  proposition: "concombre",
  good_not_good: false,
  question_id: question8.id
})

answer1 = Answer.create!({
  proposition: "pommes golden",
  good_not_good: true,
  question_id: question8.id
})


answer3 = Answer.create!({
  proposition: "tomates cerises",
  good_not_good: false,
  question_id: question8.id
})


answer4 = Answer.create!({
  proposition: "mie de pain",
  good_not_good: false,
  question_id: question8.id
})

#//////////////////////////////////////

question9 = Question.create!({
  sujet: "Quel ingredient est present dans le Clafoutis?",
  quizz_id: quizz1.id
})




answer2 = Answer.create!({
  proposition: "pâtes feuilletées",
  good_not_good: false,
  question_id: question9.id
})


answer3 = Answer.create!({
  proposition: "oignon",
  good_not_good: false,
  question_id: question9.id
})


answer4 = Answer.create!({
  proposition: "poivre",
  good_not_good: false,
  question_id: question9.id
})

answer1 = Answer.create!({
  proposition: "poires",
  good_not_good: true,
  question_id: question9.id
})

# ///////////////////////////

question6 = Question.create!({
  sujet: "Quel ingredient est present dans le Pâté aux pommes de terre?",
  quizz_id: quizz1.id
})



answer1 = Answer.create!({
  proposition: "oignon",
  good_not_good: true,
  question_id: question6.id
})



answer2 = Answer.create!({
  proposition: " levure",
  good_not_good: false,
  question_id: question6.id
})


answer3 = Answer.create!({
  proposition: "sucre roux",
  good_not_good: false,
  question_id: question6.id
})


answer4 = Answer.create!({
  proposition: "fuits rouges",
  good_not_good: false,
  question_id: question6.id
})
#////////////////////////////


#ITALIENNE


#////////////////////////////////////
user2 = User.create!({
  name: "Wilsock",
  email: "Wilsock1940@armyspy.com",
  password: "12345678"
})


quizz2 = Quizz.create!({
  theme: "Italienne"
})


#////////////////////////////////////

question1 = Question.create!({
  sujet: "Quel ingredient y-a-il dans l'Osso Buco ?",
  quizz_id: quizz2.id
})


answer2 = Answer.create!({
  proposition: "du boeuf",
  good_not_good: false,
  question_id: question1.id
})

answer1 = Answer.create!({
  proposition: "du veau",
  good_not_good: true,
  question_id: question1.id
})

answer3 = Answer.create!({
  proposition: "du poulet",
  good_not_good: false,
  question_id: question1.id
})


answer4 = Answer.create!({
  proposition: "du porc",
  good_not_good: false,
  question_id: question1.id
})

#/////////////////////////////////////
question2 = Question.create!({
  sujet: "Quel ingredient est present dans les linguine alla vongole ?",
  quizz_id: quizz2.id
})



answer1 = Answer.create!({
  proposition: "des palourdes",
  good_not_good: true,
  question_id: question2.id
})



answer2 = Answer.create!({
  proposition: "du jambon de parme",
  good_not_good: false,
  question_id: question2.id
})


answer3 = Answer.create!({
  proposition: "de la mozarella",
  good_not_good: false,
  question_id: question2.id
})


answer4 = Answer.create!({
  proposition: "des courgettes",
  good_not_good: false,
  question_id: question2.id
})

#///////////////////////////////////////
question3 = Question.create!({
  sujet: "Quel ingredient est present dans le Tiramisu ?",
  quizz_id: quizz2.id
})


answer2 = Answer.create!({
  proposition: "du citron",
  good_not_good: false,
  question_id: question3.id
})


answer3 = Answer.create!({
  proposition: "des fraises",
  good_not_good: false,
  question_id: question3.id
})


answer4 = Answer.create!({
  proposition: "levure",
  good_not_good: false,
  question_id: question3.id
})

answer1 = Answer.create!({
  proposition: "du mascarpone",
  good_not_good: true,
  question_id: question3.id
})

#///////////////////////////////////

question4 = Question.create!({
  sujet: "Quel ingredient est present dans les Polpettine ?",
  quizz_id: quizz2.id
})




answer2 = Answer.create!({
  proposition: "de la menthe",
  good_not_good: false,
  question_id: question4.id
})


answer3 = Answer.create!({
  proposition: "du basilic",
  good_not_good: false,
  question_id: question4.id
})


answer4 = Answer.create!({
  proposition: "des tomates",
  good_not_good: false,
  question_id: question4.id
})

answer1 = Answer.create!({
  proposition: "du persil",
  good_not_good: true,
  question_id: question4.id
})

#///////////////////////////////////////

question5 = Question.create!({
  sujet: "Quel ingredient est present dans le Carpaccio ?",
  quizz_id: quizz2.id
})


answer2 = Answer.create!({
  proposition: "du veau",
  good_not_good: false,
  question_id: question5.id
})


answer3 = Answer.create!({
  proposition: "du poulpe",
  good_not_good: false,
  question_id: question5.id
})

answer1 = Answer.create!({
  proposition: "du boeuf",
  good_not_good: true,
  question_id: question5.id
})

answer4 = Answer.create!({
  proposition: "des poivrons",
  good_not_good: false,
  question_id: question5.id
})

#//////////////////////////////

# question6 = Question.create!({
#   sujet: "Quel ingredient est present dans les Pennes aux légumes?",
#   quizz_id: quizz2.id
# })



# answer1 = Answer.create!({
#   proposition: "aubergine",
#   good_not_good: true,
#   question_id: question6.id
# })

# answer2 = Answer.create!({
#   proposition: "tomates séchées",
#   good_not_good: false,
#   question_id: question6.id
# })

# answer3 = Answer.create!({
#   proposition: "olives noires",
#   good_not_good: false,
#   question_id: question6.id
# })


# answer4 = Answer.create!({
#   proposition: "mozzarella",
#   good_not_good: false,
#   question_id: question6.id
# })

#////////////////////////////////

# question7 = Question.create!({
#   sujet: "Quel ingredient est present dans le Millefeuille?",
#   quizz_id: quizz2.id
# })




# answer2 = Answer.create!({
#   proposition: "courgettes",
#   good_not_good: false,
#   question_id: question7.id
# })

# answer1 = Answer.create!({
#   proposition: "mozzarella ",
#   good_not_good: true,
#   question_id: question7.id
# })

# answer3 = Answer.create!({
#   proposition: "oeuf",
#   good_not_good: false,
#   question_id: question7.id
# })


# answer4 = Answer.create!({
#   proposition: "carotte",
#   good_not_good: false,
#   question_id: question7.id
# })

#////////////////////////////////////////

# question8 = Question.create!({
#   sujet: "Quel ingredient est present dans les Courgettes frites?",
#   quizz_id: quizz2.id
# })




# answer2 = Answer.create!({
#   proposition: "mozzarella ",
#   good_not_good: false,
#   question_id: question8.id
# })


# answer3 = Answer.create!({
#   proposition: "basilic",
#   good_not_good: false,
#   question_id: question8.id
# })

# answer1 = Answer.create!({
#   proposition: "oeuf",
#   good_not_good: true,
#   question_id: question8.id
# })


# answer4 = Answer.create!({
#   proposition: "huile d'olive",
#   good_not_good: false,
#   question_id: question8.id
# })

#/////////////////////////////////

# question9 = Question.create!({
#   sujet: "Quel ingredient est present dans les Cannelloni épinards et ricotta?",
#   quizz_id: quizz2.id
# })



# answer2 = Answer.create!({
#   proposition: "artichauts violets",
#   good_not_good: false,
#   question_id: question9.id
# })


# answer3 = Answer.create!({
#   proposition: "citrons jaunes",
#   good_not_good: false,
#   question_id: question9.id
# })


# answer4 = Answer.create!({
#   proposition: "parmigiano",
#   good_not_good: false,
#   question_id: question9.id
# })

# answer1 = Answer.create!({
#   proposition: "épinard",
#   good_not_good: true,
#   question_id: question9.id
# })

#///////////////////////////////

# question10 = Question.create!({
#   sujet: "Quel ingredient est present dans les Artichauts à l'italienne?",
#   quizz_id: quizz2.id
# })



# answer1 = Answer.create!({
#   proposition: "basilic",
#   good_not_good: true,
#   question_id: question10.id
# })



# answer2 = Answer.create!({
#   proposition: "lait",
#   good_not_good: false,
#   question_id: question10.id
# })


# answer3 = Answer.create!({
#   proposition: "muscade",
#   good_not_good: false,
#   question_id: question10.id
# })


# answer4 = Answer.create!({
#   proposition: "parmigiano",
#   good_not_good: false,
#   question_id: question10.id
# })

#////////////////////////////////////////

# scrapping de quizz_biz

html_file =
open("http://www.quizz.biz/quizz-869119.html")
html_doc = Nokogiri::HTML(html_file)
questions_ids =[]
html_doc.search('.question').each do |question|
  question_text = question.text.match(/(..\..)(.+)/)


  created_question = Question.create!({
    sujet: question_text[2],
    quizz_id: quizz1.id
  })
  questions_ids << created_question.id


end

group_id = questions_ids[0]
html_doc.search('.reponses').each_slice(3) do |group|
  group.each do |reponse|
    answer_text = reponse.text.match(/(...)(.+)/)

    Answer.create!({
      proposition: answer_text[2],
      good_not_good: false,
      question_id: group_id
    })
  end
  group_id += 1
end




user3 = User.create!({
  name: "emile",
  email: "paul1941@dayrep.com",
  password: "12345678"
})


# quizz3 = Quizz.create!({
#   theme: "Française"
# })





#///////////////////////////////////////


user4 = User.create!({
  name: "paul",
  email: "paul1940@dayrep.com",
  password: "12345678"
})


# quizz4 = Quizz.create!({
#   theme: "Française"
# })





#///////////////////////////////////////
