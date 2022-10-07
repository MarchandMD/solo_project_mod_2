class CreateTrails < ActiveRecord::Migration[5.2]
  def change
    create_table :trails do |t|
      t.string :name
      t.boolean :open
      t.integer :mountain_id

      t.timestamps
    end
  end
end
