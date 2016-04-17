class MessageMailer < ApplicationMailer

  def send_email(recipient, body, subject, file_name)
    # prepare for email send including file attachment as provided; file cleanup
    @body = body
    attachments["post_event.ics"] = File.read(file_name) if file_name
    mail to: recipient, subject: "foodstream: #{subject}" 
    File.delete(file_name) if file_name
  end

end
