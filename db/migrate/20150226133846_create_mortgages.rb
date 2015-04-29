class CreateMortgages < ActiveRecord::Migration
  def change
    create_table :mortgages do |t|
      t.string :description
      t.integer :value

      t.timestamps null: false
    end
  end
end
