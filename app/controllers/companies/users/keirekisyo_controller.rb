class Companies::Users::KeirekisyoController < ApplicationController

  def show
    @user = current_company.users.find(params[:user_id])
    @keirekisyo = @user.keirekisyo
  end

  def edit
    @user = current_company.users.find(params[:user_id])
    @keirekisyo = @user.keirekisyo
  end

  def new
    @user = current_company.users.find(params[:user_id])
    @keirekisyo = Keirekisyo.new
  end

  def create
    @user = current_company.users.find(params[:user_id])
    @keirekisyo = @user.build_keirekisyo(keirekisyo_params)

    if @keirekisyo.save!
      redirect_to company_user_keirekisyo_path(company_id: params[:company_id], user_id: params[:user_id], id: @keirekisyo.id), notice: "「経歴書」を登録しました。"
    else
      render :new
    end
  end

  def update
    keirekisyo = Company.find(params[:company_id]).users.find(params[:user_id]).keirekisyo
    keirekisyo.update!(keirekisyo_params)
    redirect_to users_url, notice: "ユーザー「経歴書」を更新しました。"
  end

  def destroy
    keirekisyo = Company.find(params[:company_id]).users.find(params[:user_id]).keirekisyo
    keirekisyo.destroy
    redirect_to users_url, notice: "ユーザー「#{keirekisyo.name}」を削除しました。"
  end

  private

  def keirekisyo_params
    params.require(:keirekisyo).permit(:name, :kakoyaku, :tokugi, :food)
  end
end
