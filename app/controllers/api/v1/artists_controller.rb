module Api
  module V1
    class ArtistsController < ApplicationController

      def index
        render json: Artist.all, include: ['events']
      end

      def create
      end

      def update
      end

      def destroy
      end

    end
  end
end
