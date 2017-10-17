class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :host_student
  has_one :incoming_student
  validates :status, inclusion: { in: ["incoming student", "host student"]}
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = current_user
  #   @user.host_student = @host_student
  #   @user.save
  # end
end
