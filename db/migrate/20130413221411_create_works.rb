class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.string :medium
      t.text :description
      t.integer :copy

      t.timestamps
    end
  end
end
