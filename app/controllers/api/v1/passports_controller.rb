module Api
  module V1
    class PassportsController < ApplicationController
      before_action :set_passport, only: %i[search_passport]

      def search_passport
        if @passport.present?
          render json: @passport
        else
          render json: { success: false, message: 'passport is not available' }
        end
      end

      def find_passport
        passport = Passport.find(params[:id])
        if passport.present?
          render json: passport
        else
          render json: { success: false, message: 'Passport is not available' }
        end
      end

      private

      def set_passport
        @passport = Passport.find_by_number(params[:number])
      end
    end
  end
end
