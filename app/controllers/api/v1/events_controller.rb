module Api
  module V1
    class EventsController < ApplicationController

      def index
        render json: Event.all, include: ['artists', 'presenter']
      end

      def create
        binding.pry
        event =  Event.create!(event_params)
        render json: event
      end

      def update
      end

      def destroy
      end

      private
      def event_params
        ActiveModelSerializers::Deserialization.jsonapi_parse(params)
      end
    end
  end
end
