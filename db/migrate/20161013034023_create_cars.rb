class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :pedidoID
      t.string :cantidad
      t.string :productoID
      t.string :costo
      t.string :userID

      t.timestamps null: false
    end
  end
end
