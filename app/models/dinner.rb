class Dinner < ApplicationRecord
  belongs_to :incoming_student
  belongs_to :host_student
end
