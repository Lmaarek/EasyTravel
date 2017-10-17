class AddUserIdToIncomingStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :incoming_students, :user_id, :integer
  end
end
