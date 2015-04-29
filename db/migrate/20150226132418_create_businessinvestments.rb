class CreateBusinessinvestments < ActiveRecord::Migration
  def change
    create_table :businessinvestments do |t|
      t.string :description
      t.integer :value

      t.timestamps null: false
    end
  end
end
