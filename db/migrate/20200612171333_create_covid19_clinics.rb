class CreateCovid19Clinics < ActiveRecord::Migration[6.0]
  def change
    create_table :covid19_clinics do |t|
      t.string :province
      t.string :district
      t.string :name
      t.string :phone
      t.boolean :sampling
      t.string :address
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
