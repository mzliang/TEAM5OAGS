class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :username
      t.string :email
      t.string :password
      t.integer :role

      t.timestamps
    end
  end
end
