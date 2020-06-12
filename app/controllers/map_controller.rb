class MapController < ApplicationController
  def index
    @places = []

    @shelters = Shelter.limit(50)
    @shelters.each do |shelter|
      @places << [
        shelter.id,
        shelter.status,
        shelter.name,
        shelter.road_address,
        shelter.y.to_f,
        shelter.x.to_f
      ]
    end
  end
end
