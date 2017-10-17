class HostStudentsController < ApplicationController

  # def new
  #   @host_student = HostStudent.new
  #   @host_student.save
  # end

  def create
    @host_student = HostStudent.new
    @host_student.first_name = current_user.first_name
    @host_student.last_name = current_user.last_name
    @host_student.description = current_user.description
    @host_student.email = current_user.email
    @host_student.save
  end

  def edit

  end

  def update

  end

private

def review_params
    params.require(:host_student).permit(:first_name, :last_name, :email, :description, :user)
end

end
