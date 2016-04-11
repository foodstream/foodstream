class FoodstreamSms < ActionSmser::Base
  def send_message(to, from, body)
    sms(:to => to, :from => from, :body => body)
  end
end
