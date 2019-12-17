class CreateSensors < ActiveRecord::Migration[5.2]
  def change
    create_table :sensors do |t|
      t.decimal :temperature, precision: 4, scale: 1
      t.decimal :humidity, precision: 4, scale: 1
      t.decimal :illumination, precision: 4, scale: 1
      t.decimal :movement, precision: 4, scale: 1

      t.timestamps
    end
  end
end
