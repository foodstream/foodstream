class MessageMailer < ApplicationMailer
  def send_email(recipient, body, subject)
    @body = body
    attachments["event.ics"] = File.read('tmp/test.ics')
    mail to: recipient, subject: "foodstream: #{subject}", message: body
  end
end
