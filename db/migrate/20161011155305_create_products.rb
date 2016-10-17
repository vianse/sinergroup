class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :codigo
      t.string :descripcion
      t.string :costo

      t.timestamps null: false
    end
  end
end
