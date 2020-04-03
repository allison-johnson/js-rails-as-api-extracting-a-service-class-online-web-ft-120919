class SightingSerializer

  def initialize(sighting_object)
    @sighting = sighting_object
  end #init

  def to_serialized_json
    # @sighting.to_json(:include => {
    #     :bird => {:only => [:name, :species]},
    #     :location => {:only => [:latitude, :longitude]}
    # }, :except => [:updated_at])

    options = {
      include: {
        bird: {only: [:name, :species]},
        location: {only: [:latitude, :longitude]}
      },
      :except => [:updated_at]
    } #options
    @sighting.to_json(options)
  end #to_serialized_json

end #class