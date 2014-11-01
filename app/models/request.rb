class Request < ActiveRecord::Base
  mount_uploader :image, RoomPictureUploader
end
