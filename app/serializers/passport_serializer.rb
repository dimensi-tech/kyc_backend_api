class PassportSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :birth_place, :mother_name, :father_name, :number,
             :expired_date, :birth_date, :gender
end
