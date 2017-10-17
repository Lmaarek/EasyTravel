class RemoveIncomingStudentToDinner < ActiveRecord::Migration[5.0]
  def change
    remove_column :dinners, :incoming_student_id
  end
end
