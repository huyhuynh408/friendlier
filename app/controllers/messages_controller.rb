class MessagesController < ApplicationController
  # before_action :authenticate_user
  def new
  end

  def create
    recipient = User.where(id: params[:profile_id])
    conversation = current_user.send_message(recipient, params[:message][:body], params[:message][:subject])
    redirect_to profile_path(recipient)
  end
end
