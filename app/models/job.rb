class Job < ActiveRecord::Base
  belongs_to :user
  belongs_to :multi
  has_one :customer
end
