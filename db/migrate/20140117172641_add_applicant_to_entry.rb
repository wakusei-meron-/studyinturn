class AddApplicantToEntry < ActiveRecord::Migration
  def change
    add_reference :entries, :applicant, index: true
  end
end
