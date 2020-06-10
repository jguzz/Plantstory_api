class RemovePlantIdFromStories < ActiveRecord::Migration[6.0]
  def change
    remove_index :stories, :plant_id
    remove_column :stories, :plant_id, :string
  end
end
