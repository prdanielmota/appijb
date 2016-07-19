class AddFieldToContact < ActiveRecord::Migration
  def change
    add_reference :contacts, :member, index: true, foreign_key: true
  end
end
