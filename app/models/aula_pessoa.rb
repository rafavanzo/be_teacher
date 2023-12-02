class AulaPessoa < ApplicationRecord
    belongs_to :aula
    has_one :pessoa
  
    validates :aula_id, :pessoa_id, presence: true
  end
  