class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string "group_name"
      t.timestamps null: false
    end
  end
end
