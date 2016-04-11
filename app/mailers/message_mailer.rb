class MessageMailer < ApplicationMailer
  def send_email(recipient, sender, body, subject)
    @body = body
    mail to: recipient, from: sender, subject: subject, message: body
  end
end
