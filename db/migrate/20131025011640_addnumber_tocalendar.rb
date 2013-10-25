class AddnumberTocalendar < ActiveRecord::Migration
  def change
    add_column :calendars, :number, :integer
  end
end
