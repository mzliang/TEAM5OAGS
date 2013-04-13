class Artist < ActiveRecord::Base
  attr_accessible :dateDeceased, :dateOfBirth, :email, :firstName, :lastName, :nationality, :password_digest, :remember_token, :username
  has_many :works
end
