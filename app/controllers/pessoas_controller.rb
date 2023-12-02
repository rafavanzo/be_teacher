class PessoasController < ApplicationController
  def create
    pessoa = Pessoa.new(pessoa_params)

    if pessoa.save
      render json: pessoa, status: :created
    else
      render json: pessoa.errors, status: :unprocessable_entity
    end
  end

  private

  def pessoa_params
    params.require(:pessoa).permit(:nome, :cpf, :sexo, :data_nascimento, :email, :senha)
  end
end
