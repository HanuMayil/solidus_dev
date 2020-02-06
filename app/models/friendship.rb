class Friendship < ActiveRecord::Base
  belongs_to :user, :class_name => 'Spree::User', optional: true
  belongs_to :friend, :class_name => 'Spree::User'
end
