class AulaPessoa < ApplicationRecord
    belongs_to :aula
    belongs_to :pessoa
  
    validates :aula_id, :pessoa_id, presence: true
  end
  