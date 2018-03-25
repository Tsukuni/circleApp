class AddImageToMenSnaps < ActiveRecord::Migration[5.1]
  def change
    add_column :men_snaps, :men_image2, :string
    add_column :men_snaps, :men_image3, :string
  end
end
