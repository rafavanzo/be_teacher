class Aula < ApplicationRecord
  has_and_belongs_to_many :pessoas, join_table: :aulas_pessoas

  validates :materia, :data, :hora_inicio, :hora_fim, :conteudo, presence: true
end
