class Identity < ApplicationRecord
  belongs_to :city, optional: :true
  belongs_to :province, optional: :true
  belongs_to :district, optional: :true
  belongs_to :urban_village, optional: :true
end
