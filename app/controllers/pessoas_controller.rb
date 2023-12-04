class PessoasController < ApplicationController
  def create
    pessoa = Pessoa.new(pessoa_params)

    if pessoa.save
      render json: pessoa, status: :created
    else
      render json: pessoa.errors, status: :unprocessable_entity
    end
  end

  def index
    aulas = Pessoa.all.order(:created_at => :desc)

    render json: aulas
  end

  private

  def pessoa_params
    params.require(:pessoa).permit(:nome, :cpf, :sexo, :data_nascimento, :email, :senha)
  end
end
