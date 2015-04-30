class User < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  mount_uploader :imagesq, ImageUploader

end
