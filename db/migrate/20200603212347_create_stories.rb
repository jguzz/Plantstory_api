class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.belongs_to :collection, null: false, foreign_key: true
      t.belongs_to :plant, null: false, foreign_key: true
      t.string :nickname
      t.date :acquiredOn
      t.boolean :owned

      t.timestamps
    end
  end
end
