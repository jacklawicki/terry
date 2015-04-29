class CreateVendorfinances < ActiveRecord::Migration
  def change
    create_table :vendorfinances do |t|
      t.string :description
      t.integer :value

      t.timestamps null: false
    end
  end
end
