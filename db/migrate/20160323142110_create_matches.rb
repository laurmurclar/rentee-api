class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.references :tenant, index: true, foreign_key: true
      t.references :property, index: true, foreign_key: true
      t.boolean :matched

      t.timestamps null: false
    end
  end
end
