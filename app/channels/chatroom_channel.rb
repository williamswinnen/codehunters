class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    solution = Solution.find(params[:id])
    stream_for solution
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
