class ChangeTypeToBedType < ActiveRecord::Migration
  def change
  	remove_column :beds, :type, :string
  	add_column :beds, :bed_type, :string
  end
end
