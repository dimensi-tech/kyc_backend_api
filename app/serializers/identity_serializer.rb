# frozen_string_literal: true

class IdentitySerializer < ActiveModel::Serializer
  attributes :id, :name, :nik, :nationality, :gender, :district, :regional, :religion,
             :image_identity_card, :occupation, :birth_date, :address, :rt, :rw, :city_id,
             :province_id, :martial_status
end
