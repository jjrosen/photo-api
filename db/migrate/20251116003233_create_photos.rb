class CreatePhotos < ActiveRecord::Migration[7.2]
  def change
    create_table :photos do |t|
      t.string :name
      t.integer :length
      t.integer :width

      t.timestamps
    end
  end
end
