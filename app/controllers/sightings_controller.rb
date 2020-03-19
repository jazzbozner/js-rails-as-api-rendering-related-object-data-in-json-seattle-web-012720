class SightingsController < ApplicationController
    def show 
        sighting = Sighting.find_by(id: params[:id])
        if sighting
            render json: sighting, include: [:bird, :location]
        else
            render json: {message: "These aren't the birds you're looking for."}
        end
        # render json: sighting

        # render json: {
        #     id: sighting.id,
        #     bird: sighting.bird,
        #     location: sighting.location
        # }

    end
end
