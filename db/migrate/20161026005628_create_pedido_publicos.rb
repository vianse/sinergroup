class CreatePedidoPublicos < ActiveRecord::Migration
  def change
    create_table :pedido_publicos do |t|
      t.string :pedido
      t.string :fecha
      t.string :nombre
      t.string :correo
      t.string :telefono

      t.timestamps null: false
    end
  end
end
