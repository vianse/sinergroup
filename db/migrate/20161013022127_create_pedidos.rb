class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string :titulo
      t.string :estatus
      t.string :userID

      t.timestamps null: false
    end
  end
end
