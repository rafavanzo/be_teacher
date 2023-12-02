class SessionsController < ApplicationController
  def show
    pessoa = Pessoa.find_by(email: params[:email], senha: params[:senha])

    if pessoa.present?
      render json: pessoa, status: :ok
    else
      render json: { error: "Usuário ou senha inválidos" }, status: :unauthorized
    end
  end

  private

  def pessoa_params
    params.permit(:email, :senha)
  end
end
