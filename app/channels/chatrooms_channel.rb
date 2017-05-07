class ChatroomsChannel < ApplicationCable::Channel
  def subscribed
    current_user.chrooms.each do |chatroom| 
		stream_from "chrooms:#{chatroom.id}"
	end
  end

  def unsubscribed
    stop_all_streams
  end
end
