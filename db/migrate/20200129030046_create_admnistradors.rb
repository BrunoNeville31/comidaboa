class CreateAdmnistradors < ActiveRecord::Migration[5.2]
  def change
    create_table :admnistradors, id: false do |t|
      t.string :id, limit: 36, primary_key: true, null: false
      t.string :nome
      t.string :email
      t.string :senha

      t.timestamps
    end
  end
end
