class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.text :testimonialContent
      t.integer :customer_id

      t.timestamps
    end

    add_index :testimonials, [:customer_id, :created_at]
    add_index :testimonials, :testimonialContent
  end
end
