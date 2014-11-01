class Request < ActiveRecord::Base
  mount_uploader :image, RoomPictureUploader
  state_machine :state, :initial => :open do
    state :open, value: 0
    state :in_progress, value: 1
    state :completed, value: 2
  end
end
