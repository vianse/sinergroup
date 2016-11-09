class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :codigo
      t.string :descripcion
      t.float  "costo",         :precision => 7, :scale => 2

      t.timestamps null: false
    end
  end
end
