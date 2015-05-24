class WelcomeController < ApplicationController

  def index
    session[:user_id] = 1
    @user = User.all.limit(5)
    p @user
  end
end
