class CreateTermdeposits < ActiveRecord::Migration
  def change
    create_table :termdeposits do |t|
      t.string :description
      t.integer :value

      t.timestamps null: false
    end
  end
end
