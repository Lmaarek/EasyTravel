class DinnersController < ApplicationController

  def index
    @dinners = Dinner.all
  end

  def new
    @dinner = Dinner.new
  end

  def create
    @dinner = Dinner.new(review_params)
    @dinner.host_student = current_user.host_student
    if @dinner.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @dinner = Dinner.find(params[:id])
  end

  def edit
    @dinner = Dinner.find(params[:id])
  end

  def update
  end

  private

  def review_params
    params.require(:dinner).permit(:name, :place, :date, :description, :host_student, :dinner_incoming_student)
  end

  def host_student_params
    params.require(:host_student).permit(:first_name, :last_name, :description, :nationality)
  end

end
