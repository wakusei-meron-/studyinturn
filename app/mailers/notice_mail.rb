# -*- coding: utf-8 -*-
class NoticeMail < ActionMailer::Base
  default from: "suport@studyindurn.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mail.sendmail_notification.subject
  #
  def sendmail_notification(email, name)
    @greeting = name

    mail to: email.to_s
    mail subject: "[確認]申し込みを受付けました"
  end
end
