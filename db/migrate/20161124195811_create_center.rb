class CreateCenter < ActiveRecord::Migration[5.0]
  def change
    create_table :centers do |t|
      t.string :name
      t.string :type
      t.string :phone

      t.timestamps null: false
      t.timestamps null: false
    end
  end
end
