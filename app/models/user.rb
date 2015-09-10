class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :quizzs
  has_many :answer_users
  after_create :set_default_name

# Methode a écrire pour calculer le score total des users
# 3 options
    #Option A: Abandonner le stockage des reponses d'un user et le calcul du score a aprtir de là
    # et juste ajouter le score de la session a un champs score à créer (migration)
    #Option B: Forcer le sign-in dès le début (pas possible de jouer sans compte!) et utiliser la méthode total score pour calculer le score des users
    #Option C: Stocker en session le score d'une session sans sign-up, l'ajouter à un champ user.temporary_score et calculer le total score avec la fonction total_score + temporary_score


  def total_score


    total_score = 0

    # Quizz.all.each do |quizz|
    #   quizz.questions.each do |question|
    #     question.answers.each do |answer|
    #       if (answer.good_not_good && answer.proposition == AnswerUser.where(answer_id = answer.id))
    #         total_score += 1
    #       end
    #     end
    #   end
    # end

    # on recupere toutes les reponses de l'utilisateur
    answers_of_user = AnswerUser.where(user_id: self.id)

    # on verifie toutes celles qui sont justes
    answers_of_user.each do |answer|
      if Answer.find(answer.answer_id).good_not_good
        total_score += 1
        # on augmente le score de 1 a chaque reponse juste
      end
  end

    return total_score
  end

    # Do not work if user has not been signed in during the quizz

  def set_default_name
    self.name = email.split("@").first.split('.').first.capitalize
    save
  end


end
