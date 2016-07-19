class Member < ActiveRecord::Base
	has_one :address
	has_many :contact
	accepts_nested_attributes_for :contact
	accepts_nested_attributes_for :address
end
