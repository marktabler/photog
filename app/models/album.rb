class Album < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  def icon
    image.small.url
  end

  has_many :photos
end
