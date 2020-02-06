class AddedItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :item
  belongs_to :user

  has_many :user_items
  has_many :users, :through => :user_items
end
