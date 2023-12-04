class DropAulasPessoasTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :aulas_pessoas
  end
end
