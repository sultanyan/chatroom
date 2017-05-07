class MessageRelayJob < ApplicationJob
  queue_as :default

  # accept message
  def perform(message)
    ActionCable.server.broadcast "chrooms:#{message.chroom.id}",
    message: MessagesController.render(message),
    chroom_id: message.chroom.id
  end
end
