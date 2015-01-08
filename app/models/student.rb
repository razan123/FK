class Student < ActiveRecord::Base
  belongs_to :project
  attr_accessible :name
  has_one :profile

end
