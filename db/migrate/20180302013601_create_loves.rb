class CreateLoves < ActiveRecord::Migration[5.1]
  def change
    create_table :loves do |t|
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4

      t.timestamps
    end
  end
end
