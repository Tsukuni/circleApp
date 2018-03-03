class CampusLife < ApplicationRecord
  mount_uploader :campus_image1, CampusImage1Uploader
  mount_uploader :campus_image2, CampusImage2Uploader
end
