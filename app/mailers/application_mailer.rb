class ApplicationMailer < ActionMailer::Base
  default :from => 'foodstreamapp@gmail.com',
          :reply_to => 'no-reply@foodstre.am'
  layout 'mailer'
end
