class CreateCampusLives < ActiveRecord::Migration[5.1]
  def change
    create_table :campus_lives do |t|
      t.string :image1
      t.string :image2

      t.timestamps
    end
  end
end
