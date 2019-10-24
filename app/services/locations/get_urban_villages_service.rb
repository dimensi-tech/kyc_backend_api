require 'net/http'
require 'uri'

module Locations
  class GetUrbanVillagesService
    def initialize
      @districts = District.all
      @result    = { saved_rows: [], failed_rows: [] }
    end

    def call
      if @districts.present?
        @districts.each do |district|
          response = send_request(district.code)

          next unless response.is_a?(Net::HTTPOK)

          JSON.parse(response.body)['desas'].each do |urban_village|
            create_urban_village(urban_village, district)
          end
        end
      end
    end

    private

    def create_urban_village(urban_village, district)
      UrbanVillage.find_or_create_by(
        code: urban_village['id'],
        name: urban_village['nama'],
        district_id: district.id
      )
    end

    def send_request(district_code)
      uri      = URI.parse("#{ENV['PROVINCES_URL']}/kabupaten/kecamatan/#{district_code}/desa")
      http     = Net::HTTP.new(uri.host, uri.port)
      response = http.get(uri)
    end
  end
end
