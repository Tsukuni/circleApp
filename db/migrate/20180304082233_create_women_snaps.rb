class CreateWomenSnaps < ActiveRecord::Migration[5.1]
  def change
    create_table :women_snaps do |t|
      t.string :women_image
      t.string :name

      t.timestamps
    end
  end
end
