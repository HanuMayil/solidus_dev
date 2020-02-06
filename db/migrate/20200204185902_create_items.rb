class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.float "unit_price"
      t.timestamps null: false
    end
  end
end
