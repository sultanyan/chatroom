App.chatrooms = App.cable.subscriptions.create "ChatroomsChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  # We will need a redis server up'n running in order for this to work 100%
  received: (data) ->
    active_chatroom = $("[data-behaviour='messages'][data-chatroom-id='#{data.chroom_id}']")
    if active_chatroom.length > 0 
    	active_chatroom.append(data.message)
    else
    	$("[data-behavior='chatroom-link'][data-chatroom-id='#{data.chroom_id}']").css("font-weight", "bold")
    
