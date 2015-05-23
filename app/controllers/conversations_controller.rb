class ConversationsController < ApplicationController
  # before_action :authenticate_user

  def index
    session[:user_id] = 1
    @conversations = get_mailbox.inbox
  end

  private

  def get_mailbox
    mailbox ||= current_user.mailbox
  end
end
