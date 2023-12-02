class CreateAulas < ActiveRecord::Migration[7.1]
  def change
    create_table :aulas do |t|
      t.string :materia, null: false
      t.string :data, null: false
      t.string :hora_inicio, null: false
      t.string :hora_fim, null: false

      t.timestamps
    end
  end
end
