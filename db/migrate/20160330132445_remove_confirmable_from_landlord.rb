class RemoveConfirmableFromLandlord < ActiveRecord::Migration
  def change
    remove_column :landlords, :confirmation_token, :string
    remove_column :landlords, :confirmed_at, :datetime
    remove_column :landlords, :confirmation_sent_at, :datetime
    remove_column :landlords, :unconfirmed_email, :string
  end
end
