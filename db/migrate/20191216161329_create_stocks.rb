class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :name, null: false
      t.string :url
      t.boolean :is_empty, default: false
      t.integer :sort_number

      t.timestamps
    end
  end
end
