class CreateAnalysisItems < ActiveRecord::Migration[5.0]
  def change
    create_table :analysis_items do |t|
      t.references :determination
      t.float :amount
      t.string :situation

      t.timestamps null: false
      t.timestamps null: false
    end
  end
end
