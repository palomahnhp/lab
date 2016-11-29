class AddGroupToChapters < ActiveRecord::Migration[5.0]
  def change
    add_column :chapters, :group, :string
  end
end
