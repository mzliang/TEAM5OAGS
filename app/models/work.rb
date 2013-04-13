class Work < ActiveRecord::Base
  attr_accessible :artist_id, :copy, :description, :medium, :title

  belongs_to :artists
end
