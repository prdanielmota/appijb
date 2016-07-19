class CreateClasses < ActiveRecord::Migration
  def change
    create_table :classes do |t|
      t.references :group, index: true, foreign_key: true
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
