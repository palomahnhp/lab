class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :name

      t.timestamps null: false
      t.timestamps null: false
    end
  end
end
