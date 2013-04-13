class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :lastName
      t.string :firstName
      t.string :nationality
      t.date :dateOfBirth
      t.date :dateDeceased
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :remember_token

      t.timestamps
    end

    add_index :artists, :username
    add_index :artists, :email
  end
end
