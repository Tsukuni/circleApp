class AddCapaImageToCapacities < ActiveRecord::Migration[5.1]
  def change
    add_column :capacities, :capa_image1, :string
    add_column :capacities, :capa_image2, :string
    add_column :capacities, :capa_image3, :string
    add_column :capacities, :capa_image4, :string
    add_column :capacities, :capa_image5, :string
    add_column :capacities, :capa_image6, :string
  end
end
