class AddColumnUrbanVillageToIdentities < ActiveRecord::Migration[6.0]
  def change
    add_column :identities, :urban_village_id, :integer
  end
end
