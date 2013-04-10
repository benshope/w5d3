# == Schema Information
#
# Table name: subscriptions
#
#  id                  :integer          not null, primary key
#  subscriptionplan_id :integer
#  user_id             :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Subscription < ActiveRecord::Base
  belongs_to :subscriptionplan
  belongs_to :user
end
