class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes, id: false do |t|
      t.string :id, limit: 36, primary_key: true, null: false
      t.string :nome
      t.string :cpf
      t.string :telefone
      t.string :email
      t.string :endereco
      t.string :numero
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep

      t.timestamps
    end
  end
end
