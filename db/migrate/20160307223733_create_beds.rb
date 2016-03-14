class CreateBeds < ActiveRecord::Migration
  def change
    create_table :beds do |t|
      t.string :type
      t.integer :property_id
      t.boolean :available
      t.timestamps null: false
    end
  end
end
