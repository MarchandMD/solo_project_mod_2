class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :trails, :open, :trail_open
  end
end
