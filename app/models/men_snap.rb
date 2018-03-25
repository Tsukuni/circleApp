class MenSnap < ApplicationRecord
  mount_uploader :men_image, MenImageUploader
  mount_uploader :men_image2, MenImage2Uploader
  mount_uploader :men_image3, MenImage3Uploader
end
