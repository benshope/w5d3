# == Schema Information
#
# Table name: subscription_plans
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  price        :integer
#  weekly       :boolean
#  newspaper_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class SubscriptionPlan < ActiveRecord::Base
  attr_accessible :name, :price, :weekly
  belongs_to :newspaper
end
