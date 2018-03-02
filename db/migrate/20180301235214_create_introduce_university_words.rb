class CreateIntroduceUniversityWords < ActiveRecord::Migration[5.1]
  def change
    create_table :introduce_university_words do |t|
      t.string :title
      t.text :meaning
      t.text :example

      t.timestamps
    end
  end
end
