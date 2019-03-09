class KeirekisyosController < ApplicationController
  def show
    @keirekisyo = current_company.users.find(params[:user_id]).keirekisyo
  end

  def edit
    @keirekisyo = current_company.users.find(params[:user_id]).keirekisyo
  end

  def new
    @user = current_company.users.find(params[:user_id)
    @keirekisyo = Keirekisyo.new
  end

  def create
    @user = current_company.users.find(params[:id])
    @keirekisyo = @user.keirekisyos.build(keirekisyo_params)

    if @keirekisyo.save!
      redirect_to @user, notice: "「経歴書」を登録しました。"
    else
      render :new
    end
  end

  def update
    keirekisyo = current_company.users.find(params[:user_id]).keirekisyo
    keirekisyo.update!(keirekisyo_params)
    redirect_to users_url, notice: "ユーザー「経歴書」を更新しました。"
  end

  def destroy
    keirekisyo = current_company.users.find(params[:user_id]).keirekisyo
    keirekisyo.destroy
    redirect_to users_url, notice: "ユーザー「#{keirekisyo.name}」を削除しました。"
  end

  private

  def keirekisyo_params
    params.require(:keirekisyo).permit(:name, :kakoyaku, :tokugi, :food)
  end
end
