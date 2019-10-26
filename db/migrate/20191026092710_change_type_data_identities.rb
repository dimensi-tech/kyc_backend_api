class ChangeTypeDataIdentities < ActiveRecord::Migration[6.0]
  def up
    change_column :identities, :martial_status, :string
  end

  def down
    change_column :identities, :martial_status, :integer
  end
end
