class AddGenderToPassports < ActiveRecord::Migration[6.0]
  def change
    add_column :passports, :gender, :string
  end
end
