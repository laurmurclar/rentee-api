class AddPhoneNumbers < ActiveRecord::Migration
  def change
    add_column :tenants, :ph_no, :string
    add_column :landlords, :ph_no, :string
  end
end
