class AddUniqueIndexToApprovals < ActiveRecord::Migration
  def change
    add_index :approvals, ["tenant_id", "property_id"], :unique => true
  end
end
