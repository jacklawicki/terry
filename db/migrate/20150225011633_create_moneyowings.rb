class CreateMoneyowings < ActiveRecord::Migration
  def change
    create_table :moneyowings do |t|
      t.string :description
      t.integer :value

      t.timestamps null: false
    end
  end
end
