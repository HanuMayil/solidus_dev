class Group < ActiveRecord::Base
  has_many :group_members
  has_many :spree_users, :through => :group_members
end
