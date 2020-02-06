class CreateUserItems < ActiveRecord::Migration[6.0]
  def change
    create_table :user_items do |t|
      t.belongs_to :added_item
      t.belongs_to :spree_user
      t.float "percent_owing"
      t.integer "quantity"
      t.timestamps null: false
    end
  end
end
