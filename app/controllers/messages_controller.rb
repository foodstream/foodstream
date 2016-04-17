class MessagesController < ApplicationController
  before_action :logged_in?

  def index
    @messages = Message.where(post_id: params[:post_id])
  end

  def send_email
    # generate email for recipient and save the message body for chat history
    SendEmailJob.perform_now(params[:recipient], params[:body], params[:subject], params[:file_name])
    message = Message.new(post_id: params[:post_id], body: params[:body], sender_id: @current_user.id)
    message.save
    render nothing: true
  end

  private

    #Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:id, :post_id, :body, :sender_id)
    end
end
