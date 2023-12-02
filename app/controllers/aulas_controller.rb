class AulasController < ApplicationController
  def index
    aulas = Aula.all

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

  private

  def aula_params
    params.require(:aula).permit(:materia, :data, :hora_inicio, :hora_fim)
  end
end
