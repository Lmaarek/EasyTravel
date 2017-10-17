class Dinner < ApplicationRecord
  has_many :incoming_student
  belongs_to :host_student
end
