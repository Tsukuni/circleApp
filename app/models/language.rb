class Language < ApplicationRecord
  mount_uploader :image, ImageUploader
end
