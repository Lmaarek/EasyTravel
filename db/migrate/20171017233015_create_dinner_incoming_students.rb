class CreateDinnerIncomingStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :dinner_incoming_students do |t|
      t.integer :incoming_student
      t.integer :dinner

      t.timestamps
    end
  end
end
