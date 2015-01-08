class Profile < ActiveRecord::Base
  attr_accessible :email 
  belongs_to :student
end
