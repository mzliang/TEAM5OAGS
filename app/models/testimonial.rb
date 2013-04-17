# == Schema Information
#
# Table name: testimonials
#
#  id                 :integer          not null, primary key
#  testimonialContent :text
#  customer_id        :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Testimonial < ActiveRecord::Base
  attr_accessible :customer_id, :testimonialContent
  belongs_to :customer

  validates_presence_of :testimonialContent, presence: true, length: { maximum: 140 }


 # search function to search testimonialContent
  def self.search(search)
  if search
    find(:all, :conditions => ['testimonialContent LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

end
