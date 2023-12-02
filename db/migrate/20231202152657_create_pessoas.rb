class CreatePessoas < ActiveRecord::Migration[7.1]
  def change
    create_table :pessoas do |t|
      t.string :nome, null: false
      t.string :cpf, null: false
      t.string :sexo, null: false
      t.date :data_nascimento, null: false
      t.string :email, null: false
      t.string :senha, null: false

      t.timestamps
    end
  end
end
