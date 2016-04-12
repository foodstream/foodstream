class SendEmailJob < ActiveJob::Base
  queue_as :emails

  def perform(*args)
    MessageMailer.send_email(args[0], args[1], args[2]).deliver_now
  end
end
