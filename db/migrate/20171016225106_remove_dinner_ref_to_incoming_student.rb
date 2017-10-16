class RemoveDinnerRefToIncomingStudent < ActiveRecord::Migration[5.0]
  def change
    remove_reference(:incoming_students, :dinner, foreign_key: true)
  end
end
