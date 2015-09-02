class QuizzsController < ApplicationController

  before_action :find_quizz, only: [ :show ]


  def index
    @quizzs = Quizz.all
  end

  def show

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

end
