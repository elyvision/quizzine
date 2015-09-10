class AnswerUsersController < ApplicationController

  def create
    # faire un test pour vérifier que le joueur a répondu
    # si il a répondu tout se passe normalement
    # si il n'a pas répondu il faut redéfinir @answer_user


    # if params[:answer_user].nil?
    # compute_score

    # else
    # Il faut permettre l'enregistrement de la reponse même si elle est vide
      @answer_user = AnswerUser.new
      @answer_user.answer = Answer.find(params[:answer_user][:answer_id])
      @answer_user.user = current_user
      @question = @answer_user.answer.question
      @quizz = @question.quizz
    # end
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
    if answer_user.answer.good_not_good == true
      session[:score] += 1
    end
  end

end


#AJAX ( si je prend l'option le compte a rebourg = la duree d'une partie, IL FAUT RAJOUTER LE REMOTE TRUE  A LA BONNE PLACE)

# if @answer_user.save
#       respond_to do |format|
#         format.html { redirect_to question_path(@answer_user.answer.question) }
#         format.js  # <-- will render `app/views/reviews/create.js.erb`
#       end
#     else
#       respond_to do |format|
#         format.html { render 'quizzs/:id' }
#         format.js  # <-- idem
#       end
#     end
#   end
