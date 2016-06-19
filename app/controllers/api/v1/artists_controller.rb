module Api
  module V1
    class ArtistsController < ApplicationController

      def index
        render json: Artist.all, include: ['events']
      end

      def create
        artist = Artist.create(artist_params)
        render json: artist
      end

      def update
      end

      def destroy
      end

      private
      def artist_params
        params.require(:data).require(:attributes).permit(:name)
      end

    end
  end
end
