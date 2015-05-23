class MessagesController < ApplicationController
  # before_action :authenticate_user
  def new
  end

  def create
    recipient = User.where(id: params[:profile_id])
    conversation = current_user.send_message(recipient, params[:message][:body], params[:message][:subject])
    flash[:notice] = "Message sent!"
    redirect_to profile_path(params[:profile_id])
  end
end
