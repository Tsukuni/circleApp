class Exam < ApplicationRecord
  mount_uploader :exam_image, ExamImageUploader
end
