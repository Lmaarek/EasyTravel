class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :host_student
  has_one :incoming_student
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
