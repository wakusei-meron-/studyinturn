class Company::ApplicantsController < ApplicationController
  before_action :set_applicant, only: [:show]
  def index
    @applicants = Applicant.find_all_by_entry_id(params[:entry_id])
   # @applicant_user = User.find(@applicant.user_id)
  end

  def show
    @entry = Entry.find(params[:entry_id])
  end

  private
  def set_applicant
    @applicant = Applicant.find(params[:id])
  end

  def applicant_params
#    params.require(:applicant).permit(:body)
  end
end
