class CreateExamComments < ActiveRecord::Migration[5.1]
  def change
    create_table :exam_comments do |t|
      t.text :context

      t.timestamps
    end
  end
end
