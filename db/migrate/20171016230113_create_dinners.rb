class CreateDinners < ActiveRecord::Migration[5.0]
  def change
    create_table :dinners do |t|
      t.string :name
      t.text :description
      t.string :place
      t.date :date
      t.references :incoming_student, foreign_key: true
      t.references :host_student, foreign_key: true

      t.timestamps
    end
  end
end
