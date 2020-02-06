class CreateAddedItems < ActiveRecord::Migration[6.0]
  def change
    create_table :added_items do |t|
      t.belongs_to :item
      t.belongs_to :spree_order
      t.belongs_to :spree_user
      t.timestamps null: false
    end
  end
end
