class CreateMaskstores < ActiveRecord::Migration[6.0]
  def change
    create_table :maskstores do |t|
      t.string :group
      t.string :code
      t.string :name
      t.string :address
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
