class MessagesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_chatroom

	def create
		message = @chroom.messages.new(message_params)
		message.user = current_user # Assign author
		message.save
		# Add a job. Send over to a queue
		MessageRelayJob.perform_later(message) 
	end

	private
	def set_chatroom
		@chroom = Chroom.find(params[:chroom_id]) 
	end

	def message_params
		params.require(:message).permit(:body)
	end
end