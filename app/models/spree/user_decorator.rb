module Spree::UserDecorator
  Spree::User.class_eval do
    has_many :friendships
    has_many :friends, through: :friendships

    has_many :group_members
    has_many :groups, :through => :group_members

    has_many :order_members
    has_many :spree_orders, :through => :order_members

    has_many :user_items
    has_many :added_items, :through => :user_items

    belongs_to :referred_by, optional: true, :class_name => "Spree::User", :foreign_key => "referred_by_user_id"
    has_many :referrals, :class_name => "Spree::User", :foreign_key => "referred_by_user_id"

    validates :referred_by_user_id, presence: true, allow_nil: true

    def self.search(param)
      param.to_s.strip!
      param.to_s.downcase!
      to_send_back = (first_name_matches(param) + last_name_matches(param) + email_matches(param)).uniq
      return nil unless to_send_back
      to_send_back
    end

    def self.first_name_matches(param)
      matches('first_name', param)
    end

    def self.last_name_matches(param)
      matches('last_name', param)
    end

    def self.email_matches(param)
      matches('email', param)
    end

    def self.matches(field_name, param)
      Spree::User.where("#{field_name} like?", "%#{param}%")
    end

    def except_current_user(users)
      users.reject{|user| user.id == self.id}
    end

    def not_friends_with?(friend_id)
      friendships.where(friend_id: friend_id).count < 1
    end

  end
end
