# -*- coding: utf-8 -*-
class Company::ApplicantsController < ApplicationController
  before_action :set_applicant, only: [:show]
  def index
    @applicants = Applicant.find_all_by_entry_id(params[:entry_id])
   # @applicant_user = User.find(@applicant.user_id)
  end

  def show
  end

  def mail_send
    redirect_to company_entries_path, :notice => "メール送信完了"
    
  end

  private
  def set_applicant
    @applicant = Applicant.find(params[:id])
    @entry = Entry.find(params[:entry_id])
  end

  # def applicant_params
  #   params.require(:applicant).permit(:body)
  # end
end
