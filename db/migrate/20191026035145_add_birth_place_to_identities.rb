class AddBirthPlaceToIdentities < ActiveRecord::Migration[6.0]
  def change
    add_column :identities, :birth_place, :string
  end
end
