class Team < ActiveRecord::Base
  attr_accessible :name, :students_attributes
  has_many :students, :inverse_of => :team
  accepts_nested_attributes_for :students
end
