class CreateMountains < ActiveRecord::Migration[5.2]
  def change
    create_table :mountains do |t|
      t.string :name
      t.boolean :handicap_accessible

      t.timestamps
    end
  end
end
