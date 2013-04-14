class Employee < ActiveRecord::Base
  attr_accessible :email, :password, :role, :username
end
