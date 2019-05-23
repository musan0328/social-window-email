class ApplicationMailer < ActionMailer::Base
  mail = 'ayatsujisan2@gmail.com'#ENV["LOGIN_NAME"]
  default from: mail
  layout 'mailer'
end