class ConversationsController < ApplicationController
  before_action :authenticate_user

  def index
    @conversations = @mailbox.inbox
  end

  private

  def get_mailbox
    @mailbox ||= current_user.mailbox
  end
end
