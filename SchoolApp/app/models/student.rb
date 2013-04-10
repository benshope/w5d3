class Student < ActiveRecord::Base
  belongs_to :team, :inverse_of => :students
  attr_accessible :name
end
