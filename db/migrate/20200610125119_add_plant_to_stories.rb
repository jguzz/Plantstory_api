class AddPlantToStories < ActiveRecord::Migration[6.0]
  def change
    add_column :stories, :common_name, :string
    add_column :stories, :latin_name, :string
  end
end
