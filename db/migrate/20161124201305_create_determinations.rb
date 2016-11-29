class CreateDeterminations < ActiveRecord::Migration[5.0]
  def change
    create_table :determinations do |t|
      t.string :name
      t.references :chapter, foreign_key: true
      t.float :maximun
      t.float :minimun
      t.string :unit
      t.string :comments

      t.timestamps null: false
      t.timestamps null: false
    end
  end
end
