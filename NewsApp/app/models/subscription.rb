class Subscription < ActiveRecord::Base
  belongs_to :subscriptionplan
  belongs_to :user
  # attr_accessible :title, :body
end
