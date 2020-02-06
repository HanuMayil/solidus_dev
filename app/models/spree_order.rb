class SpreeOrder < ActiveRecord::Base
  has_many :order_members
  has_many :users, :through => :order_members

  has_many :added_items
  has_many :items, :through => :added_items
end
