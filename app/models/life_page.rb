class LifePage < ApplicationRecord
  mount_uploader :life_photo1, LifePhoto1Uploader
  mount_uploader :life_photo2, LifePhoto2Uploader
  mount_uploader :life_photo3, LifePhoto3Uploader
  mount_uploader :life_photo4, LifePhoto4Uploader
end
