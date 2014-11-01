class RequestMailer < ActionMailer::Base
  default from: 'jamietesting99chairs@gmail.com'

  def welcome_email(email_address, email_body)
    @email_body = email_body
    mail(to: email_address, subject: 'Hi From 99 chairs!')
  end
end
