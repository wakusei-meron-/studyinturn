class AddCompanyToEntries < ActiveRecord::Migration
  def change
    add_reference :entries, :company, index: true
  end
end
