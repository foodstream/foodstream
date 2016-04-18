class MessagesController < ApplicationController
  before_action :logged_in?, only: [:index]

  def index
    @messages = Message.where(post_id: params[:post_id])
  end

  def send_email
    email_type = ""
    if params[:email_type]
      email_type = params[:email_type]
    else
      email_type = EmailTemplate::CHAT_MESSAGE_TYPE
    end

    # generate email for recipient and save the message body for chat history
    SendEmailJob.perform_now(params[:recipient], params[:body], params[:subject], params[:file_name], email_type)

    # only save message if part of chat history
    if params[:post_id]
      message = Message.new(post_id: params[:post_id], body: params[:body], sender_id: params[:sender_id])
      message.save
    end
    render nothing: true
  end

  private

    #Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:id, :post_id, :body, :sender_id)
    end
end
