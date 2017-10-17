class IncomingStudentsController < ApplicationController

  # def new
  #   @incoming_student = IncomingStudent.new
  # end

  # def create
  # end

  private

  def review_params
    params.require(:incoming_student).permit(:first_name, :last_name, :email, :description, :user, :nationality)
  end


end
