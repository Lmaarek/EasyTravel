class CreateHostStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :host_students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :description

      t.timestamps
    end
  end
end
