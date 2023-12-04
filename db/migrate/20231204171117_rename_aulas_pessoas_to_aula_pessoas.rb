class RenameAulasPessoasToAulaPessoas < ActiveRecord::Migration[7.1]
  def change
    rename_table :aulas_pessoas, :aula_pessoas
  end
end
