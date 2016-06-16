module Api
  module V1
    class EventsController < ApplicationController

      def index
        render json: Event.all, include: ['artists', 'presenter']
      end

      def create
        event = Event.create(event_params)
        render json: event
      end

      def update
      end

      def destroy
      end

      private
      def event_params
        params.require(:data).require(:attributes).permit(:name, :date, :price, :description, :url, :image)
      end
    end
  end
end
