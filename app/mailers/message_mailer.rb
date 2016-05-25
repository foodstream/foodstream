# require 'email_template'
class MessageMailer < ApplicationMailer
include EmailTemplate

  def send_email(recipient, body, subject, email_type, file_name)
    # prepare for email send including file attachment as provided; file cleanup
    @body = body
    @email_signature = EMAIL_VALUES[email_type.to_sym][:SIGNATURE]

    attachments["post_event.ics"] = File.read(file_name) if file_name
    mail to: recipient, subject: "foodstream: #{subject}"
    File.delete(file_name) if file_name
  end

end
