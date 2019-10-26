class AddColumnReleaseDateToPassports < ActiveRecord::Migration[6.0]
  def change
    add_column :passports, :released_date, :date
  end
end
