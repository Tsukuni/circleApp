class AddImageToWomenSnaps < ActiveRecord::Migration[5.1]
  def change
    add_column :women_snaps, :women_image2, :string
    add_column :women_snaps, :women_image3, :string
  end
end
