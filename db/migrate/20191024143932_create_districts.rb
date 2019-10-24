class CreateDistricts < ActiveRecord::Migration[6.0]
  def change
    create_table :districts do |t|
      t.string :name
      t.string :code
      t.integer :city_id

      t.timestamps
    end
  end
end
