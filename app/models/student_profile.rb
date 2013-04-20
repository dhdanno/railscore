class StudentProfile < ActiveRecord::Base
  attr_accessible :name, :userID
  has_one :user
end