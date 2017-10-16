class DropHostStudentTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :host_students
  end
end
