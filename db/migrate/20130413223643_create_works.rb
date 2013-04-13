class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.string :medium
      t.string :description
      t.string :copy
      t.string :artist_id

      t.timestamps
    end
  end
end
