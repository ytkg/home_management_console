class CreateGomiCalendars < ActiveRecord::Migration[5.2]
  def change
    create_table :gomi_calendars do |t|
      t.date :date
      t.string :content

      t.timestamps
    end
  end
end
