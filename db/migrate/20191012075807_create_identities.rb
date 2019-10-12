class CreateIdentities < ActiveRecord::Migration[6.0]
  def change
    create_table :identities do |t|
      t.string :name
      t.string :nik
      t.string :nationality
      t.string :gender
      t.string :district
      t.string :regional
      t.string :religion
      t.string :image_identity_card
      t.string :occupation
      t.date :birth_date
      t.text :address
      t.integer :rt
      t.integer :rw
      t.integer :city_id
      t.integer :province_id
      t.integer :martial_status

      t.timestamps
    end
  end
end
