class QuizzsController < ApplicationController

  before_action :find_quizz, only: [ :show ]


  def index
    # Elie : Rendre disponible l'ensemble des resources pour une partie
    @quizzs = Quizz.all
    @score = session[:score] = 0
    session[:counter] = 0

  end

  def show
    # MAX TROUVER DANS TOUTES LES QUESTIONS DU QUIZZ UNE QUESTION PAS DEJA FAITES
    @question = select_random_question
    if @question.nil?
      redirect_to quizzs_path
    else
      @answers = @question.answers # je veux afficher les answers de la question ci dessu
      # Elie dans cette vue le joueur va cree la reponse à la question
      @answer_user = AnswerUser.new
      @score = session[:score]
    end
  end


  private

  def find_quizz
    @quizz = Quizz.find(params[:id])
  end

  def quizz_params
    params.require(:quizz).permit(:theme)
  end

  def select_random_question
    # MAX 1ere question je récupere tous les ids / questions suivantes je connais deja les ids donc pas besoin de faire une requete
    if session[:counter] == 0
      session[@quizz.theme.to_sym] = {} # creation
      session[@quizz.theme.to_sym]["quizz_questions"] = @quizz.questions.map {|question| question.id}
      session[@quizz.theme.to_sym]["questions_done"] = []
      @quizz_questions = session[@quizz.theme.to_sym]["quizz_questions"]
      @done_questions = session[@quizz.theme.to_sym]["questions_done"]
      @questions_to_do = @quizz_questions
    else
      @quizz_questions = session[@quizz.theme.to_sym]["quizz_questions"]
      @questions_to_do = @quizz_questions
      @done_questions = session[@quizz.theme.to_sym]["questions_done"]
      @done_questions.each do |done_question|
        @questions_to_do.delete(done_question)
      end
    end
    if @questions_to_do.any?
      @random_question_id = @questions_to_do.sample
      @question = Question.find(@random_question_id.to_i)
    end
  end


end
