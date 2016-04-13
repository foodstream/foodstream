class MessageMailer < ApplicationMailer
  def send_email(recipient, body, subject, file_name)
    @body = body
    attachments["post_event.ics"] = File.read(file_name) if file_name
    mail to: recipient, subject: "foodstream: #{subject}", message: body
    File.delete(file_name)
  end
end
