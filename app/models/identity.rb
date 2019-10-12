class Identity < ApplicationRecord
  belongs_to :city, optional: :true
  belongs_to :province, optional: :true
end
