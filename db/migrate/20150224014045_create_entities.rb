class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :money
      t.string :money_owing
      t.string :term_deposit
      t.string :share_portfolio
      t.string :property
      t.string :bus_investment
      t.string :vendor_finance
      t.string :mortgage
      t.string :details
      t.integer :amount

      t.timestamps null: false
    end
  end
end
