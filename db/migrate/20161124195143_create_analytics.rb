class CreateAnalytics < ActiveRecord::Migration[5.0]
  def change
    create_table :analytics do |t|
      t.date :extracted_at
      t.string :extracted_in
      t.date :prescribed_at
      t.string :prescribed_by
      t.string :reason

      t.timestamps null: false
      t.timestamps null: false
    end
  end
end
