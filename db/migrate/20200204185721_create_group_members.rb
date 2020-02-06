class CreateGroupMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :group_members do |t|
      t.belongs_to :spree_user
      t.belongs_to :group
      t.timestamps null: false
    end
  end
end
