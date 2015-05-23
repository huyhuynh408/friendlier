class WelcomeController < ApplicationController

  def index
    @user = User.all.limit(5)
  end
end
