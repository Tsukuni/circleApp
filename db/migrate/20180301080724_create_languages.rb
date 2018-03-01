class CreateLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :languages do |t|
      t.text :context
      t.string :image

      t.timestamps
    end
  end
end
