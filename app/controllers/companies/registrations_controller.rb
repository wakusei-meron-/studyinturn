# -*- coding: utf-8 -*-
class Companies::RegistrationsController < Devise::RegistrationsController

  before_filter :configure_permitted_parameters

  
  def new

    super
 
  end

  def create
    super
  end

  #strong parameterの許可
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |com|
      com.permit(:name, :name_a, :top, :tantou, :tantou_a, :email, :address1, :address2, :address3, :tel, :url, :bikou, :password, :password_confirmation)
    end
  end
end
