module Api
  module V1
    class EventsController < ApplicationController

      def index
        render json: Event.all, include: ['artists', 'presenter']
      end

    end
  end
end
