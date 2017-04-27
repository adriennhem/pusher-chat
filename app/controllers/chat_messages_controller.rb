class ChatMessagesController < ApplicationController
  def index
  	@chat_message = ChatMessage.new
  end

  def create
  	@chat_message = ChatMessage.new(message_params)
  	
  	Pusher.trigger('chat', 'new_message', {
    name: @chat_message.name,
    message: @chat_message.message
  	}, {
    socket_id: params[:socket_id]
  	})

  	respond_to :js
  end

  private

  def message_params
  	params.require(:chat_message).permit(:name, :message, :socket_id)
  end
end
