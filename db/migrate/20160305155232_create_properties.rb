class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :landlord_id
      t.string :street # includes apt/building number/name
      t.string :town
      t.string :county
      t.integer :rent, default: 1000
      t.integer :n_baths, default: 0
      t.boolean :rent_allowance, default: false
      t.boolean :ptrb, default: false

      t.timestamps null: false
    end
    add_index :properties, :landlord_id
  end
end
