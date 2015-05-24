class WelcomeController < ApplicationController

  def index
    session[:user_id] = 6
    @user = User.all.limit(5)
    mailbox = current_user.mailbox
    @conversation = mailbox.conversations.first
  end
end
