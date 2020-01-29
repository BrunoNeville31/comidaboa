class CreatePedidoProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :pedido_produtos, id: false do |t|
      t.string :id, limit: 36, primary_key: true, null: false
      t.string :pedido_id
      t.float :valor
      t.integer :quantidade
      t.string :produto_id

      t.timestamps
    end
    add_foreign_key :pedido_produtos, :pedidos
    add_foreign_key :pedido_produtos, :produtos
  end
end
