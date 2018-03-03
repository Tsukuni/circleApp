class Capacity < ApplicationRecord
  mount_uploader :capa_image1, CapaImage1Uploader
  mount_uploader :capa_image2, CapaImage2Uploader
  mount_uploader :capa_image3, CapaImage3Uploader
  mount_uploader :capa_image4, CapaImage4Uploader
  mount_uploader :capa_image5, CapaImage5Uploader
  mount_uploader :capa_image6, CapaImage6Uploader
end
