class CreateShelters < ActiveRecord::Migration[6.0]
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :division
      t.string :type_name
      t.string :type_division
      t.string :road_address
      t.string :depr_address
      t.string :y
      t.string :x
      t.string :max_area
      t.string :max_count
      t.string :status
      t.string :phone
      t.string :etc
      t.string :emergency_area
      t.integer :emergency_area_houses
      t.integer :emergency_area_people
      t.integer :emergency_area_people_vulnerable
      t.string :is_seismic
      t.string :seismic_level
      t.integer :distance_to_shore
      t.integer :elevation
      t.integer :count_earthquake_signs
      t.integer :count_emergency_area_signs
      t.integer :count_earthquake_road_signs
      t.string :maintenance_agency
      t.string :agency_phone
      t.string :uploaded_at

      t.timestamps
    end
  end
end
