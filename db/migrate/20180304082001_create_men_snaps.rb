class CreateMenSnaps < ActiveRecord::Migration[5.1]
  def change
    create_table :men_snaps do |t|
      t.string :men_image
      t.string :name

      t.timestamps
    end
  end
end
