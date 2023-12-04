class AulasPessoasController < ApplicationController
  def create
    aula_pessoa = AulaPessoa.new(aula_pessoa_params)

    if aula_pessoa.save
        render json: aula_pessoa, status: :created
        else
        render json: aula_pessoa.errors, status: :unprocessable_entity
    end
  end

  def index
    aula_pessoa = AulaPessoa.find(params[:pessoa_id])

    render json: aula_pessoa
    rescue ActiveRecord::RecordNotFound
        render json: { message: "Aula não encontrada" }, status: :not_found
  end

  def show
    aula_pessoa = AulaPessoa.find(params[:id])

    render json: aula_pessoa
    rescue ActiveRecord::RecordNotFound
        render json: { message: "Aula não encontrada" }, status: :not_found
  end

  def destroy 
    aula_pessoa = AulaPessoa.find(params[:id])

    if aula_pessoa.destroy
      render json: { message: "Aula cancelada com sucesso" }, status: :ok
    else
      render json: { message: "Erro ao cancelar a aula" }, status: :not_found
    end
  end
  private

  def aula_pessoa_params
      params.require(:aula_pessoa).permit(:aula_id, :pessoa_id)
  end
end
