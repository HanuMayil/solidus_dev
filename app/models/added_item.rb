class AddedItem < ActiveRecord::Base
  belongs_to :spree_order
  belongs_to :item
  belongs_to :spree_user

  has_many :user_items
  has_many :spree_users, :through => :user_items
end
