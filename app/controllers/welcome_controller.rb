class WelcomeController < ApplicationController

  def index
    session[:user_id] = 6
    @user = User.all.limit(5)
  end
end
