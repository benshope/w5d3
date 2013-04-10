class SubscriptionPlan < ActiveRecord::Base
  belongs_to :newspaper
  attr_accessible :name, :price, :weekly
end
