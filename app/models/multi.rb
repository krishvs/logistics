class Multi < ActiveRecord::Base
  belongs_to :user
  has_many :jobs
end
