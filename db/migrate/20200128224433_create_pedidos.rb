class CreatePedidos < ActiveRecord::Migration[5.2]
  def change
    create_table :pedidos, id: false do |t|
      t.string :id, limit: 36, primary_key: true, null: false
      t.string :cliente_id
      t.float :valor_total

      t.timestamps
    end
    add_foreign_key :pedidos, :clientes
  end
end
