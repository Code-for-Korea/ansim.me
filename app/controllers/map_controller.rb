class MapController < ApplicationController
  def index
    @places = []

    @category = params[:category] || "maskstores"

    if @category == "maskstores"
      Maskstore.limit(1000).each do |store|
        @places << [
          store.id,
          store.code,
          store.name,
          store.address,
          store.latitude,
          store.longitude,
          status_sample,
          status_sample,
          status_sample,
          'quantity'
        ]
      end
    elsif @category == "선별진료소"
    elsif @category == "shelters"
      @shelters = Shelter.limit(50)
      @shelters.each do |shelter|
        @places << [
          shelter.id,
          shelter.status,
          shelter.name,
          shelter.road_address,
          shelter.y.to_f,
          shelter.x.to_f,
          status_sample,
          status_sample,
          status_sample,
          'crowdness'
        ]
      end
    end
  end

  def status_sample
    ["red", "orange", "green"].sample
  end
end
