class Item < ActiveRecord::Base
  has_many :added_items
  has_many :orders, :through => :added_items
end
