class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :nombre
      t.string :ubicacion
      t.integer :numero_habitaciones

      t.timestamps
    end
  end
end
