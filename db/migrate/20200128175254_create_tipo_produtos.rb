class CreateTipoProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_produtos, id: false do |t|
      t.string :id, limit: 36, primary_key: true, null: false
      t.string :nome

      t.timestamps
    end
  end
end
