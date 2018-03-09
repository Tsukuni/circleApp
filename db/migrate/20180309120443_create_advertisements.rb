class CreateAdvertisements < ActiveRecord::Migration[5.1]
  def change
    create_table :advertisements do |t|
      t.string :adver_image
      t.string :url

      t.timestamps
    end
  end
end
