class SendEmailJob < ActiveJob::Base
  queue_as :emails

  def perform(*args)
    byebug
    MessageMailer.send_email(args[0], args[1], args[2], args[3], args[4]).deliver_now
  end
end
