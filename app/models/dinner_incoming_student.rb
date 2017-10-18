class DinnerIncomingStudent < ApplicationRecord
  has_one :incoming_student
  has_one :dinner

  def new
    @dinner_incoming_student = DinnerIncomingStudent.new
  end

  def create
    @dinner_incoming_student = DinnerIncomingStudent.new(review_params)
    @dinner_incoming_student.dinner = Dinner.param[:id]
    @dinner_incoming_student.incoming_student = IncomingStudent.param[:id]
    if @dinner_incoming_student.save
      redirect_to root_path
    else
      render :new
    end
  end

private

  def review_params
    params.require(:dinner_incoming_student).permit(:incoming_student, :dinner)
  end

  # def host_student_params
  #   params.require(:host_student).permit(:first_name, :last_name, :description, :nationality)
  # end

end
