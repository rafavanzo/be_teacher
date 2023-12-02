class Pessoa < ApplicationRecord
  has_and_belongs_to_many :aulas, join_table: :aulas_pessoas

  validates :nome, :cpf, :sexo, :data_nascimento, :email, :senha, presence: true

  validates :email, uniqueness: true

  validates :sexo, inclusion: { in: %w(M F) }
end
