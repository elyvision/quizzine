class UsersController < ApplicationController


def index
  @users = User.all
  @score = session[:score]

end

end
