# frozen_string_literal: true

class IdentitySerializer < ActiveModel::Serializer
  attributes :id, :name, :nik, :nationality, :gender, :district_name, :religion,
             :image_identity_card, :occupation, :birth_date, :address, :rt, :rw,
             :city_name, :province_name, :martial_status, :vilage_name

  def district_name
    object.district.name
  rescue StandardError
    ''
  end

  def vilage_name
    object.urban_village.name
  rescue StandardError
    ''
  end

  def city_name
    object.city.name
  rescue StandardError
    ''
  end

  def province_name
    object.province.name
  rescue StandardError
    ''
  end
end
