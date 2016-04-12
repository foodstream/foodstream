class MessageMailer < ApplicationMailer
  def send_email(recipient, body, subject)
    @body = body
    mail to: recipient, subject: "foodstream: #{subject}", message: body
  end
end
