class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :zip_code
      t.string :name_street
      t.integer :number_street
      t.string :complement
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
