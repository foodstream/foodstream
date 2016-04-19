module EmailTemplate
  USER_CREATE_SIGNATURE = 'Login to your account <a href="http://foodstre.am">here</a>.'.html_safe
  CHAT_SIGNATURE = "To reply to this message, go through the <a href=\'http://foodstre.am\'>foodstream</a> application.".html_safe
  DEFAULT_SIGNATURE = "Start reducing food waste at <a href='http://foodstre.am'>foodstream</a>.".html_safe

  USER_CREATE_SUBJECT = "Now let's verify your foodstream account"
  ICAL_SUBJECT = "Don't forget to save your foodstream calendar event!"

  USER_CREATE_MESSAGE_TYPE = "user_create"
  CHAT_MESSAGE_TYPE = "chat_message"
  ICAL_MESSAGE_TYPE = "ical"

  ICAL_BODY = "calendar details attached."
  USER_CREATE_BODY = "has successfully signed up for foodstream!"

  def get_signature(email_type)
    if email_type == CHAT_MESSAGE_TYPE
      CHAT_SIGNATURE
    elsif email_type == USER_CREATE_MESSAGE_TYPE
      USER_CREATE_SIGNATURE
    else
      DEFAULT_SIGNATURE
    end
  end

end
