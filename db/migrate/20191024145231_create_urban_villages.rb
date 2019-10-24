class CreateUrbanVillages < ActiveRecord::Migration[6.0]
  def change
    create_table :urban_villages do |t|
      t.integer :district_id
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
