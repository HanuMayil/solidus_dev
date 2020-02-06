class Item < ActiveRecord::Base
  has_many :added_items
  has_many :spree_orders, :through => :added_items
end
