class AddUserIdToHostStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :host_students, :user_id, :integer
  end
end
