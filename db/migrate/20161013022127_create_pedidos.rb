class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string :titulo
      t.string :estatus
      t.string :comentarios
      t.string :envioC
      t.string :envioS
      t.string :userID

      t.timestamps null: false
    end
  end
end
