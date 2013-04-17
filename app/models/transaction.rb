class Transaction < ActiveRecord::Base
  attr_accessible :acquisitionPrice, :askingPrice, :customer_id, :dateAcquired, :dateSold, :salesPrice, :work_id

  belongs_to :customers
  belongs_to :works
end
