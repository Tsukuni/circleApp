class WomenSnap < ApplicationRecord
  mount_uploader :women_image, WomenImageUploader
  mount_uploader :women_image2, WomenImage2Uploader
  mount_uploader :women_image3, WomenImage3Uploader
end
