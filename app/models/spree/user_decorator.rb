module Spree::UserDecorator
  Spree::User.class_eval do
    has_many :friendships
    has_many :friends, through: :friendships
  end
end
