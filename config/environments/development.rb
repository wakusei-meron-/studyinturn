# -*- coding: utf-8 -*-
Studyinturn2::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  #メールの設定
  config.action_mailer.delivery_method = :smtp

  #VPS用今はダメ。。。
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.smtp_settings = {
    :address => 'localhost'
  }
  
  #ホストの設定
  config.action_mailer.default_url_options = { :host => 'support'}
  
  # #Gmail用
  # config.action_mailer.raise_delivery_errors = true
  # config.action_mailer.smtp_settings = {
  #   :enable_starttls_auto => false
  #   # :address => 'smtp.gmail.com',
  #   # :domain => 'b0941015',
  #   # :user_name => 'b0941015@gmail.com',
  #   # :password => 'itini3da-!!',
  #   # :port => 587,
  #   # :authentication => 'plain'
  # }
  
  # #ホストの設定
  # config.action_mailer.default_url_options = { :host => 'b0941015'}# 'localhost:3000'}

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true
end
