class AddExamImageToExams < ActiveRecord::Migration[5.1]
  def change
    add_column :exams, :exam_image, :string
  end
end
