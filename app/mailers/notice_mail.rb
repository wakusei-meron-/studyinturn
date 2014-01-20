class NoticeMail < ActionMailer::Base
  default from: "suport@studyindurn.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mail.sendmail_notification.subject
  #
  def sendmail_notification
    @greeting = "Hi"

    mail to: "biba.biba.rock@r3.dion.ne.jp"
  end
end
