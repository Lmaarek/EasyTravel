class HostStudentsController < ApplicationController

  def new
    HostStudent.new
  end

  def create
    @host_student = HostStudent.new(current_user)
    @host_student.save
  end

  def edit

  end

  def update

  end


end
