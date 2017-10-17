class IncomingStudentsController < ApplicationController

  def new
    @incoming_student = IncomingStudent.new
  end

  def create
  end

end
