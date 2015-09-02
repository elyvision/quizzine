class AnswerUsersController < ApplicationController
  def create
    @answer_user = AnswerUser.new
    @answer_user.answer = Answer.find(params[:answer_user][:answer_id])
    @answer_user.user = current_user
    if @answer_user.save
      redirect_to question_path(@answer_user.answer.question.id + 1)
    else
      redirect_to question_path(@answer_user.answer.question)
    end
  end

  private

  def answer_user_params
    params.require(:answer_user).permit(:answer_id)
  end
end
