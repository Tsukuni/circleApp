class CreateUniversityWords < ActiveRecord::Migration[5.1]
  def change
    create_table :university_words do |t|
      t.string :rank1
      t.string :rank2
      t.string :rank3

      t.timestamps
    end
  end
end
