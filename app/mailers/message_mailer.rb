require 'email_template'
class MessageMailer < ApplicationMailer
include EmailTemplate

  def send_email(recipient, body, subject, email_type, file_name)
    # prepare for email send including file attachment as provided; file cleanup
    byebug
    @body = body
    @email_signature = get_signature(email_type)

    attachments["post_event.ics"] = File.read(file_name) if file_name
    mail to: recipient, subject: "foodstream: #{subject}"
    File.delete(file_name) if file_name
  end

end
