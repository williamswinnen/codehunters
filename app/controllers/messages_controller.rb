class MessagesController < ApplicationController
  def create
    @solution = Solution.find(params[:solution_id])
    @message = Message.new(message_params)
    @message.solution = @solution
    @message.user = current_user
    authorize @message
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message", locals: {message: @message})
      )
      head :ok
    else
      render "solutions/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
