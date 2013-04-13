# == Schema Information
#
# Table name: customers
#
#  id              :integer          not null, primary key
#  lastName        :string(255)
#  firstName       :string(255)
#  street          :string(255)
#  city            :string(255)
#  state           :string(255)
#  zip             :string(255)
#  country         :string(255)
#  areaCode        :string(255)
#  phoneNumber     :string(255)
#  email           :string(255)
#  username        :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  remember_token  :string(255)
#

require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
