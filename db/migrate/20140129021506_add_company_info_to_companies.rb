class AddCompanyInfoToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :name, :string
    add_column :companies, :name_a, :string
    add_column :companies, :top, :string
    add_column :companies, :tantou, :string
    add_column :companies, :tantou_a, :string
    add_column :companies, :address1, :string
    add_column :companies, :address2, :string
    add_column :companies, :address3, :string
    add_column :companies, :tel, :string
    add_column :companies, :url, :string
    add_column :companies, :bikou, :text
  end
end
