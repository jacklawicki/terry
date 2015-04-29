class CreateCashes < ActiveRecord::Migration
  def change
    create_table :cashes do |t|
      t.string :description
      t.integer :value

      t.timestamps null: false
    end
  end
end
