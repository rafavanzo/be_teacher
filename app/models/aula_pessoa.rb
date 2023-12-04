class AulaPessoa < ApplicationRecord
  self.table_name = "aulas_pessoas"

  belongs_to :aula
  belongs_to :pessoa

  validates :aula_id, :pessoa_id, presence: true
end
