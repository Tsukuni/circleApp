class AddPlaceImageToDatePlaces < ActiveRecord::Migration[5.1]
  def change
    add_column :date_places, :place_image, :string
  end
end
