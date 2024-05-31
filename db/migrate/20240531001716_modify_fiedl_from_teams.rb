class ModifyFiedlFromTeams < ActiveRecord::Migration[7.1]
  def change
    change_column_null :teams, :athletes_id, true
  end
end
