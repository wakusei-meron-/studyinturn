# -*- coding: utf-8 -*-
class LaunchPageController < ApplicationController
  def company
  end

  def com_complete
    # セッション無効にしたい
    NoticeMail.sendmail_notification(current_company.email, current_company.name).deliver
  end

  def user
  end

end
