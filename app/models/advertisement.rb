class Advertisement < ApplicationRecord
  mount_uploader :adver_image, AdverImageUploader
end
