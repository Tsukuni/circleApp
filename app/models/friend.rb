class Friend < ApplicationRecord
  mount_uploader :friend_photo1, FriendPhoto1Uploader
  mount_uploader :friend_photo2, FriendPhoto2Uploader
  mount_uploader :friend_photo3, FriendPhoto3Uploader
  mount_uploader :friend_photo4, FriendPhoto4Uploader
end
