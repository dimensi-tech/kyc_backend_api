require 'net/http'
require 'uri'

module Locations
  class GetDistrictsService
    def initialize
      @cities = City.all
      @result = { saved_rows: [], failed_rows: [] }
    end

    def call
      if @cities.present?
        @cities.each do |city|
          response = send_request(city.code)

          next unless response.is_a?(Net::HTTPOK)

          JSON.parse(response.body)['kecamatans'].each do |district|
            create_district(district, city)
          end
        end
      end
    end

    private

    def create_district(district, city)
      District.find_or_create_by(
        code: district['id'],
        name: district['nama'],
        city_id: city.id
      )
    end

    def send_request(city_code)
      uri      = URI.parse("#{ENV['PROVINCES_URL']}/kabupaten/#{city_code}/kecamatan")
      http     = Net::HTTP.new(uri.host, uri.port)
      response = http.get(uri)
    end
  end
end
