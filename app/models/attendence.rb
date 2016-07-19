class Attendence < ActiveRecord::Base
  belongs_to :calendar
  belongs_to :classe
  belongs_to :member
end
