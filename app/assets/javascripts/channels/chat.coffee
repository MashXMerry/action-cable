App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
  	console.log("Web socket connected")
  	# @perform 'send_message', message:data

  disconnected: ->
    # Called when the subscription has been terminated by the server
    
  received: (data) ->
  	console.log(data['message'])

  send_message: (data) ->
    @perform 'send_message', message:data
