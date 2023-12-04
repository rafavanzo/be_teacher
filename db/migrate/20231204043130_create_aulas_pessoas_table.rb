class CreateAulasPessoasTable < ActiveRecord::Migration[7.1]
  def change
    create_table :aulas_pessoas, id: false do |t|
      t.references :aula, null: false, foreign_key: true
      t.references :pessoa, null: false, foreign_key: true

      t.index [:aula_id, :pessoa_id], unique: true, name: 'index_aulas_pessoas_on_aula_id_and_pessoa_id'
    end
  end
end
