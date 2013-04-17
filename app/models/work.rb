class Work < ActiveRecord::Base
  attr_accessible :artist_id, :copy, :description, :medium, :title

  belongs_to :artists
  has_many :transactions
end
