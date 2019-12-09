class AddImageToIdentities < ActiveRecord::Migration[6.0]
  def change
    add_column :identities, :image, :string
    add_column :passports, :image, :string
  end
end
