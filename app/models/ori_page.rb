class OriPage < ApplicationRecord
  mount_uploader :ori_photo1, OriPhoto1Uploader
  mount_uploader :ori_photo2, OriPhoto2Uploader
end
