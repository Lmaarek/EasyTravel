class CreateIncomingStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :incoming_students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :nationality
      t.text :description

      t.timestamps
    end
  end
end
