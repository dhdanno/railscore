class BusinessProfile < ActiveRecord::Base
  attr_accessible :name, :user_id
  has_one :user
end
