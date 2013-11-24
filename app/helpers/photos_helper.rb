module PhotosHelper

  def albums_for_select
    Album.pluck(:id, :name).map {|a| [a.id, a.name]}
  end

end
