class RemoveIndexesFromAulasPessoas < ActiveRecord::Migration[6.0]
  def change
    remove_index :aulas_pessoas, column: [:aula_id, :pessoa_id]
    remove_index :aulas_pessoas, column: :aula_id
    remove_index :aulas_pessoas, column: :pessoa_id
  end
end
