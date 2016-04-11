class MessagesController < ApplicationController
  def send
    byebug
    recipient = params[:recipient]
    sender = params[:sender]
    body = params[:body]

    message = Message.new(post_id: params[:post_id], body: body)
    message.save

    sms = FoodstreamSms.send_message(recipient, sender, body)
    sms.deliver
  end

  private


    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:id, :post_id, :body)
    end
end
