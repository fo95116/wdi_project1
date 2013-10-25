class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :number

      t.timestamps
    end
  end
end
