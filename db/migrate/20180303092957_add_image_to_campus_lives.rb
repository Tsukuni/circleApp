class AddImageToCampusLives < ActiveRecord::Migration[5.1]
  def change
    add_column :campus_lives, :campus_image1, :string
    add_column :campus_lives, :campus_image2, :string
  end
end
