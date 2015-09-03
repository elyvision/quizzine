class QuizzsController < ApplicationController

  before_action :find_quizz, only: [ :show ]


  def index
    @quizzs = Quizz.all
    session[:score] = 0
    session[:counter] == 0

  end

  def show
    # MAX TROUVER DANS TOUTES LES QUESTIONS DU QUIZZ UNE QUESTION PAS DEJA FAITES
    select_random_question
    @answers = @question.answers
    @answer_user = AnswerUser.new
  end


  def new

  end

  def create

  end

  def update

  end

  def delete

  end


  private

  def find_quizz
    @quizz = Quizz.find(params[:id])
  end

  def quizz_params
    params.require(:quizz).permit(:theme)
  end

  def select_random_question
    # MAX 1ere question je écupere tous les ids / questions suivantes je connais deja les ids donc pas besoin de faire une requete
    if session[:counter] == 0
      session[@quizz.theme.to_sym] = {}
      session[@quizz.theme.to_sym]["quizz_questions"] = @quizz.questions.map {|question| question.id}
      session[@quizz.theme.to_sym]["questions_done"] = []
      @quizz_questions = session[@quizz.theme.to_sym]["quizz_questions"]
      @done_questions = session[@quizz.theme.to_sym]["questions_done"]
      @questions_to_do = @quizz_questions
    else
      @quizz_questions = session[@quizz.theme.to_sym]["quizz_questions"]
      @done_questions = session[@quizz.theme.to_sym]["questions_done"]
      @questions_to_do = @quizz_questions.select { |question | question.exclude?(@done_questions)}
    end

    @random_question_id = @questions_to_do.sample
    @question = Question.find(@random_question_id.to_i)
  end


end
