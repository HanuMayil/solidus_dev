class GroupMember < ActiveRecord::Base
  belongs_to :spree_user
  belongs_to :group
end
