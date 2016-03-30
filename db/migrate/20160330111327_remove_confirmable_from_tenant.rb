class RemoveConfirmableFromTenant < ActiveRecord::Migration
  def change
    remove_column :tenants, :confirmation_token, :string
    remove_column :tenants, :confirmed_at, :datetime
    remove_column :tenants, :confirmation_sent_at, :datetime
    remove_column :tenants, :unconfirmed_email, :string
  end
end
