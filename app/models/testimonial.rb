class Testimonial < ActiveRecord::Base
  attr_accessible :customer_id, :testimonialContent
  belongs_to :customer

  validates_presence_of :testimonialContent, presence: true, length: { maximum: 140 }


end
