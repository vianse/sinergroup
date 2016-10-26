class CreateCardpublicos < ActiveRecord::Migration
  def change
    create_table :cardpublicos do |t|
      t.string :pedidoID
      t.string :producto
      t.string :cantidad
      t.string :precio
      t.string :peso

      t.timestamps null: false
    end
  end
end
