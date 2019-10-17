class Passport < ApplicationRecord
  belongs_to :identity, optional: :true
end
