module Api
  module V1
    class PresentersController < ApplicationController

      def index
        render json: Presenter.all, include: ['events']
      end

      def create
        presenter = Presenter.create(presenter_params)
        render json: presenter
      end

      def update
        presenter = Presenter.find(params[:id])
        presenter.update(presenter_params)
        render json: presenter
      end

      def destroy
        Presenter.find(params[:id]).destroy
      end

      private
      def presenter_params
        params.require(:data).require(:attributes).permit(:name, :description, :url, :image)
      end
    end
  end
end
