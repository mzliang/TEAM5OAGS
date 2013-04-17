class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.string :medium
      t.string :description
      t.string :copy
      t.integer :artist_id

      t.timestamps
    end
    add_index :works, :artist_id
  end
end
