class AddDoctorToAnalytics < ActiveRecord::Migration[5.0]
  def change
    add_reference :analytics, :doctor, foreign_key: true
  end
end
