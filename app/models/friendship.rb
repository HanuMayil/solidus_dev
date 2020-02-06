class Friendship < ApplicationRecord
  belongs_to :spree_user, :class_name => 'Spree::User', optional: true
  belongs_to :friend, :class_name => 'Spree::User'
end
