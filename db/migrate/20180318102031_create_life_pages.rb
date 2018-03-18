class CreateLifePages < ActiveRecord::Migration[5.1]
  def change
    create_table :life_pages do |t|
      t.string :life_photo1
      t.string :life_photo2
      t.string :life_photo3
      t.string :life_photo4

      t.timestamps
    end
  end
end
