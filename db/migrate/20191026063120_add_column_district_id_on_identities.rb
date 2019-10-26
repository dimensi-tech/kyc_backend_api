class AddColumnDistrictIdOnIdentities < ActiveRecord::Migration[6.0]
  def change
    add_column :identities, :district_id, :integer
  end
end
