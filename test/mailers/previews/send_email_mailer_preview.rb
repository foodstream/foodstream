# Preview all emails at http://localhost:3000/rails/mailers/send_email_mailer
class SendEmailMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/send_email_mailer/send_email
  def send_email
    SendEmailMailer.send_email
  end

end
