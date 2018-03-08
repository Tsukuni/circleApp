class CreateOriPages < ActiveRecord::Migration[5.1]
  def change
    create_table :ori_pages do |t|
      t.string :ori_photo1
      t.string :ori_photo2

      t.timestamps
    end
  end
end
