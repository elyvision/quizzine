class QuestionsController < ApplicationController
    before_action :find_question, only: [ :show]

  def index
    @questions = Question.all
  end

  def show
# Voir la question 1
# Voir les differentes reponses associé
    @answers = @question.answers
    @answer_user = AnswerUser.new
  end


  # def new
  #   @question = Question.new
  # end

  def create

  end

  def update

  end

  def delete

  end


  private

  def find_quizz
    @quizz = Quizz.find(params[:quizz_id])
  end

  def find_question
    @question = Question.find(params[:id])
  end

  def quizz_params
    params.require(:question).permit(:sujet)
  end

end

