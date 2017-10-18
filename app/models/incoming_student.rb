class IncomingStudent < ApplicationRecord
  belongs_to :user, :dependent => :destroy
  has_many :dinner_incoming_students
end
