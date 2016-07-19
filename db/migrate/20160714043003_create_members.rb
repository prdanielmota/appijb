class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.date :birthday
      t.integer :social_security
      t.integer :status
      t.integer :hierarchy

      t.timestamps null: false
    end
  end
end
