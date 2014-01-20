class NoticeMail < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mail.sendmail_notification.subject
  #
  def sendmail_notification
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
