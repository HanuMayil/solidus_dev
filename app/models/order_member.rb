class OrderMember < ActiveRecord::Base
  belongs_to :spree_user
  belongs_to :spree_order
end
