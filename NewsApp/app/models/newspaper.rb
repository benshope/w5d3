# == Schema Information
#
# Table name: newspapers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  editor     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Newspaper < ActiveRecord::Base
  attr_accessible :editor, :name, :subscription_plans_attributes
  has_many :subscription_plans, :inverse_of => :newspaper
  accepts_nested_attributes_for :subscription_plans
end
