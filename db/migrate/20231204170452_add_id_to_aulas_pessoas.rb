class AddIdToAulasPessoas < ActiveRecord::Migration[6.0]
  def change
    add_column :aulas_pessoas, :id, :primary_key
  end
end