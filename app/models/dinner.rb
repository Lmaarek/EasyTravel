class Dinner < ApplicationRecord
  has_many :dinner_incoming_students
  belongs_to :host_student
end
