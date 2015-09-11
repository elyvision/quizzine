class UsersController < ApplicationController


  def index

    @users = User.all.flatten.sort! { |a,b| a.total_score <=> b.total_score }.reverse!

    # users => le classement des utilisateurs
    @score = session[:score]
  end

end
