class Entry < ActiveRecord::Base
  belongs_to :company
  has_many :applicant
  #belongs_to :Applicant
end
