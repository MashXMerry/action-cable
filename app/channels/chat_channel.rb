class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room"
  end

  def unsubscribed

  end

  def send_message(data)
  	ActionCable.server.broadcast "room", message:data['message']
  end
end
