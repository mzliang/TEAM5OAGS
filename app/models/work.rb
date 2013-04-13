# == Schema Information
#
# Table name: works
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  medium      :string(255)
#  description :string(255)
#  copy        :string(255)
#  artist_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Work < ActiveRecord::Base
  attr_accessible :artist_id, :copy, :description, :medium, :title

  belongs_to :artists
end
