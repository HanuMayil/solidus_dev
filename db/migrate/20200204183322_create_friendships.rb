class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.belongs_to :spree_user
      t.belongs_to :friend, class: 'SpreeUser'
      t.timestamps null: false
    end
  end
end
