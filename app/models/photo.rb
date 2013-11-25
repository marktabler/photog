class Photo < ActiveRecord::Base

  belongs_to :album

  mount_uploader :image, ImageUploader

  def thumbnail
    image.thumb.url
  end

  def for_display
    image.display.url
  end
end
