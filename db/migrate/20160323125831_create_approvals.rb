class CreateApprovals < ActiveRecord::Migration
  def change
    create_table :approvals do |t|
      t.references :tenant, index: true, foreign_key: true
      t.references :property, index: true, foreign_key: true
      t.boolean :approved

      t.timestamps null: false
    end
  end
end
