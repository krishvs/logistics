class Customer < ActiveRecord::Base
  belongs_to :account
  belongs_to :job
end
