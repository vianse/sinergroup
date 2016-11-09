class CreatePedidoPublicos < ActiveRecord::Migration
  def change
    create_table :pedido_publicos do |t|
      t.string :pedido
      t.string :fecha
      t.string :nombre
      t.string :correo
      t.string :telefono
      t.string :direccion
      t.string :calles
      t.string :municipio
      t.string :codigopostal
      t.string :rfc
      t.string :razonsocial
      t.string :direccionfiscal
      t.string :municipiofiscal
      t.string :codigopostalfiscal
      t.string :codigopromocional
      t.string :comentarios
      t.string :envioC
      t.string :envioS


      t.timestamps null: false
    end
  end
end
