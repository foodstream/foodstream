class ApplicationMailer < ActionMailer::Base
  default :from     => 'foodstreamapp@gmail.com',
          :reply_to => 'no-reply@domain.com'
  layout 'mailer'
end
