class Project < ActiveRecord::Base
  attr_accessible :abstract, :budget, :description, :title, :status
  validates :title, :presence => true
  validates :budget, numericality: true
  scope :ongoing, where(staus: 'ongoing')
  has_many :students

  def self.expensive
  	Project.where('budget > ?', 100)
  end
end
