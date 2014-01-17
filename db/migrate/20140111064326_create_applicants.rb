class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.references :user, index: true
      t.references :entry, index: true
      t.text :body

      t.timestamps
    end
  end
end
