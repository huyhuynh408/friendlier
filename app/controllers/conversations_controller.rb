class ConversationsController < ApplicationController
  # before_action :authenticate_user
  before_action :get_mailbox
  before_action :get_conversation, only: [:index, :show]

  def index
    @conversations = @mailbox.inbox
  end

  def show
  end

  private

  def get_mailbox
    @mailbox ||= current_user.mailbox
  end

  def get_conversation
    @conversation ||= @mailbox.conversations.find_by_id(params[:id])
  end
end
