class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :name
      t.string :title
      t.string :alt
      t.attachment :pic
      t.timestamps
    end
  end
end
