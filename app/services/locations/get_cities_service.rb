# frozen_string_literal: true

require 'net/http'
require 'uri'

module Locations
  class GetCitiesService
    def initialize
      @provinces = Province.all
      @result    = { saved_rows: [], failed_rows: [] }
    end

    def call
      if @provinces.present?
        @provinces.each do |province|
          response = send_request(province.code)

          next unless response.is_a?(Net::HTTPOK)

          JSON.parse(response.body)['kabupatens'].each do |city|
            create_city(city, province)
          end
        end
      end
    end

    private

    def create_city(city, province)
      City.find_or_create_by(
        code: city['id'],
        name: city['nama'],
        province_id: province.id
      )
    end

    def send_request(province_code)
      uri      = URI.parse("#{ENV['PROVINCES_URL']}/#{province_code}/kabupaten")
      http     = Net::HTTP.new(uri.host, uri.port)
      response = http.get(uri)
    end
  end
end
