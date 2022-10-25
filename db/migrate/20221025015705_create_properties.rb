class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :property_name
      t.integer :rent
      t.string :address
      t.integer :age
      t.text :remakers

      t.timestamps
    end
  end
end
