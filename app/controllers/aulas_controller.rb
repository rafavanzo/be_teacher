class AulasController < ApplicationController
  def index
    aulas = Aula.all.order(:created_at => :desc)

    render json: aulas
  end

  def create
    aula = Aula.new(aula_params)

    if aula.save
      render json: aula, status: :created
    else
      render json: aula.errors, status: :unprocessable_entity
    end
  end

  def show
    aula = Aula.find(params[:id])

    render json: aula
    rescue ActiveRecord::RecordNotFound
      render json: { message: "Aula não encontrada" }, status: :not_found
  end

  def destroy
    aula = Aula.find(params[:id])

    if aula.destroy
      render json: { message: "Aula deletada com sucesso" }, status: :ok
    else
      render json: { message: "Erro ao deletar a aula" }, status: :not_found
    end
  end

  private

  def aula_params
    params.require(:aula).permit(:materia, :data, :hora_inicio, :hora_fim, :conteudo)
  end
end
