class CreateExams < ActiveRecord::Migration[5.1]
  def change
    create_table :exams do |t|
      t.string :image

      t.timestamps
    end
  end
end
