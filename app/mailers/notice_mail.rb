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

    mail to: email#"biba.biba.rock@r3.dion.ne.jp"
    mail subject: "[お知らせ]申し込んだインターンが成立しました！"
  end
end
