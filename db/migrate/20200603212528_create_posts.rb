class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.belongs_to :story, null: false, foreign_key: true
      t.string :caption

      t.timestamps
    end
  end
end
