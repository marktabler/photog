class Photo < ActiveRecord::Base

  belongs_to :album

  mount_uploader :image, ImageUploader

  def for_display
    image.display.url
  end
end