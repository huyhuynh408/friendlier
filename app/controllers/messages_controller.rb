class MessagesController < ApplicationController
   # before_action :authenticate_user
   def new
   end

   def create
     recipient = User.where(id: params['receipients'])
     conversation = current_user.send_message
      (
      recipient,
      params[:message][:body],
      params[:message][:subject]
      ).conversation
      redirect_to conversation_path(conversation)
   end
end
