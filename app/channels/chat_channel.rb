class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def received
  end

  def communicate (data)
    class_name = data['className'].safe_constantize

    if class_name # nil result in false
      model = class_name.find(data['id'])
      model.update('data' => data['data'])
    end

    ActionCable.server.broadcast("chat_channel", data)
  end
end
