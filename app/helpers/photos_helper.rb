module PhotosHelper

  def albums_for_select
    Album.pluck(:name, :id)
  end

end
