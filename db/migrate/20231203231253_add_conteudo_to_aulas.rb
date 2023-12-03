class AddConteudoToAulas < ActiveRecord::Migration[7.1]
  def change
    add_column :aulas, :conteudo, :string, null: false
  end
end
