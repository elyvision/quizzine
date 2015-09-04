class AnswerUsersController < ApplicationController
  def create
    @answer_user = AnswerUser.new
    @answer_user.answer = Answer.find(params[:answer_user][:answer_id])
    @answer_user.user = current_user
    @question = @answer_user.answer.question
    @quizz = @question.quizz
    if @answer_user.save
      compute_score(@answer_user)
      session[@quizz.theme.to_sym]["questions_done"] << @question.id
      session[:counter] += 1
      redirect_to quizz_path(@quizz)
    else
      redirect_to question_path(@answer_user.answer.question)
    end
  end

  private

  def answer_user_params
    params.require(:answer_user).permit(:answer_id)
  end

  def compute_score(answer_user)
    if answer_user.answer == true
      session[:score] += 1
    end
  end
end
