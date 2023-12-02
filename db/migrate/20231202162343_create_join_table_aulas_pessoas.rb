class CreateJoinTableAulasPessoas < ActiveRecord::Migration[7.1]
  def change
    create_join_table :aulas, :pessoas do |t|
      t.index [:aula_id, :pessoa_id]
    end
  end
end
