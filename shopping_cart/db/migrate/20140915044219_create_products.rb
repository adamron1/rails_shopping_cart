class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title, limit: 30
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
