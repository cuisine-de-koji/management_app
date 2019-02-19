class SessionsController < ApplicationController
  def new
  end

  def create
    company = Company.find_by(email: session_params[:email])

    if company&.authenticate(session_params[:password])
      session[:company_id] = company.id
      redirect_to root_path, notice: 'ろぐいんしました。'
    else
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_path, notice: 'ろぐあうとしました。'
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
