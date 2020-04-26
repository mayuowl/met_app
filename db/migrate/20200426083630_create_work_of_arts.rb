class CreateWorkOfArts < ActiveRecord::Migration[5.2]
  def change
    create_table :work_of_arts do |t|
      t.string :title
      t.string :medium
      t.string :period
      t.string :primaryImage
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
