class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos, id: false do |t|
      t.string :id, limit: 36, primary_key: true, null: false
      t.string :nome
      t.text :descricao
      t.integer :quantidade
      t.string :tipo_produto_id
      t.float :valor

      t.timestamps
    end
    add_foreign_key :produtos, :tipo_produtos
  end
end
