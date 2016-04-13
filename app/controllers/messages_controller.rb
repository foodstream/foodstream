class MessagesController < ApplicationController
  before_action :logged_in?

  def index
    @messages = Message.where(post_id: params[:post_id])
    render json: @messages
  end

  def send_sms
    recipient = params[:recipient]
    sender = params[:sender]
    body = params[:body]

    message = Message.new(post_id: params[:post_id], body: body, sender_id: @current_user.id)
    message.save

    sms = FoodstreamSms.send_message(recipient, sender, body)
    sms.deliver
  end

  def send_email
    SendEmailJob.perform_now(params[:recipient], params[:body], params[:subject], params[:file_name])
    message = Message.new(post_id: params[:post_id], body: params[:body], sender_id: @current_user.id)
    message.save
  end

  private

    #Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:id, :post_id, :body, :sender_id)
    end
end
