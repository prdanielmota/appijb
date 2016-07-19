class Address < ActiveRecord::Base
  belongs_to :member
  has_many :contact
end
