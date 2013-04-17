class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.float :acquisitionPrice
      t.date :dateAcquired
      t.float :salesPrice
      t.float :askingPrice
      t.date :dateSold
      t.integer :work_id
      t.integer :customer_id

      t.timestamps
    end
    add_index :transactions, [:work_id, :customer_id]
    add_index :transactions, :customer_id
    add_index :transactions, :work_id

  end
end
