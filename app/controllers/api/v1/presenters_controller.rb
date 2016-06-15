module Api
  module V1
    class PresentersController < ApplicationController

      def index
        render json: Presenter.all, include: ['events']
      end

    end
  end
end
