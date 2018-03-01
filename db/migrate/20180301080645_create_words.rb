class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :name
      t.integer :veryEasy
      t.integer :easy
      t.integer :normal
      t.integer :hard
      t.integer :veryHard
      t.text :context

      t.timestamps
    end
  end
end
