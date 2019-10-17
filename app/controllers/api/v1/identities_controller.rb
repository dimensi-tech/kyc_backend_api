
module Api
  module V1
    class IdentitiesController < ApplicationController
      before_action :set_identity, only: %i[search_identity]

      def search_identity
        if @identity.present?
          render json: @identity
        else
          render json: { success: false, message: 'Identity is not available' }
        end
      end

      private

      def set_identity
        @identity = Identity.find_by_nik(params[:nik])
      end
    end
  end
end
