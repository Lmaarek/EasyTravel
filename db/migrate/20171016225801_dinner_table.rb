class DinnerTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :dinners
  end
end
