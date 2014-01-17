class Applicant < ActiveRecord::Base
  belongs_to :user
  belongs_to :entry
end
