class AddCenterToDoctors < ActiveRecord::Migration[5.0]
  def change
    add_reference :doctors, :center, foreign_key: true
  end
end
