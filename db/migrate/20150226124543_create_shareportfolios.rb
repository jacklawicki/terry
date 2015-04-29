class CreateShareportfolios < ActiveRecord::Migration
  def change
    create_table :shareportfolios do |t|
      t.string :description
      t.integer :value

      t.timestamps null: false
    end
  end
end
