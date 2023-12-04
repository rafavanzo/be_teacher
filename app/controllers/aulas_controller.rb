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

  def show_aula_where_ids
    aula_ids = params[:id].split(',').map(&:to_i)
    aulas = Aula.where(id: aula_ids)

    render json: aulas
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Aula não encontrada" }, status: :not_found
  end
  

  private

  def aula_params
    params.require(:aula).permit(:id, :materia, :data, :hora_inicio, :hora_fim, :conteudo)
  end
end
