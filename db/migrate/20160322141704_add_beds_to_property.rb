class AddBedsToProperty < ActiveRecord::Migration
  def change
  	add_column :properties, :n_beds, :integer
  	add_column :properties, :avail_beds, :integer
  	drop_table :beds
  end
end
