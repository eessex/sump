module Api
  module V1
    class EventsController < ApplicationController

      def index
        render json: Event.all, include: ['artists', 'presenter']
      end

      def create
        event = Event.create!(event_params)
        render json: event
      end

      def update
        event = Event.find(params[:id])
        event.update(event_params)
        render json: event
      end

      def destroy
        Event.find(params[:id]).destroy
      end

      private
      def event_params
        ActiveModelSerializers::Deserialization.jsonapi_parse(params)
      end
    end
  end
end
