class UserItem < ActiveRecord::Base
  belongs_to :added_item
  belongs_to :user
end
