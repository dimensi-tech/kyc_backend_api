class RemoveColumnOnIdentities < ActiveRecord::Migration[6.0]
  def change
    remove_column :identities, :regional
    remove_column :identities, :district
  end
end
