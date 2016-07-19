class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :type
      t.integer :description
      t.references :address, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
