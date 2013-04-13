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

require 'test_helper'

class WorkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
