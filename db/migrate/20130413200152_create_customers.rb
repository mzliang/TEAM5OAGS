class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :lastName
      t.string :firstName
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :areaCode
      t.string :phoneNumber
      t.string :email
      t.string :username
      t.string :password_digest

      t.timestamps
    end
    add_index :customers, :username
    add_index :customers, :email
  end
end
