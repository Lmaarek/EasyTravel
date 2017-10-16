class DropIncomingStudentTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :incoming_students
  end
end
