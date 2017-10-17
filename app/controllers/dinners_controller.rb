class DinnersController < ApplicationController

  def index
    @dinners = Dinner.all
  end

  def new
    @dinner = Dinner.new
  end

  def create
    @dinner = Dinner.new(review_params)
    @dinner.host_student = HostStudent.find(params[:id])
    @dinner.save
  end

  private

  def review_params
    params.require(:dinner).permit(:name, :place, :date, :description)
  end

  def host_student_params
    params.require(:host_student).permit(:first_name, :last_name, :description, :nationality)
  end

end
