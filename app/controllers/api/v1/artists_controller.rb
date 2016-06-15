module Api
  module V1
    class ArtistsController < ApplicationController

      def index
        render json: Artist.all, include: ['events']
      end

    end
  end
end
