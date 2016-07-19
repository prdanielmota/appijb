class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.date :event
      t.integer :repeat
      t.text :description
      t.integer :status
      t.references :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
