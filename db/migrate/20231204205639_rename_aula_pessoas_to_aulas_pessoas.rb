class RenameAulaPessoasToAulasPessoas < ActiveRecord::Migration[7.1]
  def change
    rename_table :aula_pessoas, :aulas_pessoas
  end
end
