module EmailTemplate

  EMAIL_VALUES = {
    USER_CREATE_MESSAGE_TYPE: { SIGNATURE: "",
                                SUBJECT: "Now let's verify your foodstream account",
                                BODY: "has successfully signed up for foodstream!" },
    VERIFY_SUCCESS_MESSAGE_TYPE: { SIGNATURE: 'Login to your account <a href="http://foodstre.am">here</a>.'.html_safe,
                                   SUBJECT: "Your foodstream account has been verified!",
                                   BODY: "has been verified" },
    VERIFY_FAILURE_MESSAGE_TYPE: { SIGNATURE: "",
                                   SUBJECT: "foodstream verification failure!",
                                   BODY: "has failed verification. Please check the original link in your verification email and try again." },
    CHAT_MESSAGE_TYPE: { SIGNATURE: "To reply to this message, go through the <a href=\'http://foodstre.am\'>foodstream</a> application.".html_safe },
    ICAL_MESSAGE_TYPE: { SIGNATURE: "Start reducing food waste at <a href='http://foodstre.am'>foodstream</a>.".html_safe,
                         SUBJECT: "Don't forget to save your foodstream calendar event!",
                         BODY: "calendar details attached." }
  }
  # EMAIL_VALUES.default = ""


end
