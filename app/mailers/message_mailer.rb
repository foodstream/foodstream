class MessageMailer < ApplicationMailer

  def send_email(recipient, body, subject, file_name, email_type)
    # prepare for email send including file attachment as provided; file cleanup
    @body = body
    if email_type == "chat_message"
      @email_signature = 'To reply to this message, go through the <a href="http://foodstre.am">foodstream</a> application.'.html_safe
    elsif email_type == "user_create"
      @email_signature = 'Login to your account <a href="http://foodstre.am">here</a>.'.html_safe
    else
      @email_signature = 'Visit <a href="http://foodstre.am">foodstream</a> here.'.html_safe
    end
    attachments["post_event.ics"] = File.read(file_name) if file_name
    mail to: recipient, subject: "foodstream: #{subject}"
    File.delete(file_name) if file_name
  end

end
