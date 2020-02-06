class CreateOrderMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :order_members do |t|
      t.belongs_to :spree_user
      t.belongs_to :spree_order
      t.timestamps null: false
    end
  end
end
