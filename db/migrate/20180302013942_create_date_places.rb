class CreateDatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :date_places do |t|
      t.string :name
      t.string :url
      t.text :context
      t.string :image

      t.timestamps
    end
  end
end
