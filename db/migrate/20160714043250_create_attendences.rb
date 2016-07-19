class CreateAttendences < ActiveRecord::Migration
  def change
    create_table :attendences do |t|
      t.references :calendar, index: true, foreign_key: true
      t.references :class, index: true, foreign_key: true
      t.references :member, index: true, foreign_key: true
      t.integer :checkin

      t.timestamps null: false
    end
  end
end
