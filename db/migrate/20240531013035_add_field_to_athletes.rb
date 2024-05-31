class AddFieldToAthletes < ActiveRecord::Migration[7.1]
  def change
    add_reference :athletes, :team, null: false, foreign_key: true
  end
end
