module EmailTemplate
  BLANK_SIGNATURE = ""
  CHAT_SIGNATURE = "To reply to this message, go through the <a href=\'http://foodstre.am\'>foodstream</a> application.".html_safe
  VERIFY_SUCCESS_SIGNATURE = 'Login to your account <a href="http://foodstre.am">here</a>.'.html_safe
  DEFAULT_SIGNATURE = "Start reducing food waste at <a href='http://foodstre.am'>foodstream</a>.".html_safe

  USER_CREATE_SUBJECT = "Now let's verify your foodstream account"
  ICAL_SUBJECT = "Don't forget to save your foodstream calendar event!"
  VERIFY_SUCCESS_SUBJECT = "Your foodstream account has been verified!"
  VERIFY_FAILURE_SUBJECT = "Your foodstream verification failed."

  USER_CREATE_MESSAGE_TYPE = "user_create"
  CHAT_MESSAGE_TYPE = "chat_message"
  ICAL_MESSAGE_TYPE = "ical"
  VERIFY_SUCCESS_MESSAGE_TYPE = "verification_success"
  VERIFY_FAILURE_MESSAGE_TYPE = "verification_failure"

  ICAL_BODY = "calendar details attached."
  USER_CREATE_BODY = "has successfully signed up for foodstream!"
  VERIFY_SUCCESS_BODY = "has been verified"
  VERIFY_FAILURE_BODY = "has failed verification. Please check the original link in your verification email and try again."

  def get_signature(email_type)
    if email_type == CHAT_MESSAGE_TYPE
      CHAT_SIGNATURE
    elsif email_type == USER_CREATE_MESSAGE_TYPE || email_type == VERIFY_FAILURE_MESSAGE_TYPE
      BLANK_SIGNATURE
    elsif email_type == VERIFY_SUCCESS_MESSAGE_TYPE
      VERIFY_SUCCESS_SIGNATURE
    else
      DEFAULT_SIGNATURE
    end
  end

end
