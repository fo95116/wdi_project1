class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.string :name
      t.string :benefit
      t.string :day
      t.text :ingredients

      t.timestamps
    end
  end
end
