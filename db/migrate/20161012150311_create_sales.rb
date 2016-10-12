class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.datetime :purchase_date
      t.references :album, index: true, foreign_key: true
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
