class MessagesController < ApplicationController
  # before_action :authenticate_user
  def new
  end

  def create
    p params
    recipient = User.where(id: params[:profile_id])
    conversation = current_user.send_message(recipient, params[:message][:body], params[:message][:subject])
    redirect_to conversation_path(conversation)
  end
end
