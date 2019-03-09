class Companies::UsersController < ApplicationController
  def index
    @users = Company.find(params[:company_id]).users
  end

  def show
    @user = Company.find(params[:company_id]).users.find(params[:id])
  end

  def edit
    @user = current_company.users.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = current_company.users.new(user_params)

    if @user.save!
      redirect_to @user, notice: "「#{@user.name}」を登録しました。"
    else
      render :new
    end
  end

  def update
    user = current_company.users.find(params[:id])
    user.update!(user_params)
    redirect_to users_url, notice: "ユーザー「#{user.name}」を更新しました。"
  end

  def destroy
    user = current_company.users.find(params[:id])
    user.destroy
    redirect_to users_url, notice: "ユーザー「#{user.name}」を削除しました。"
  end

  private

  def user_params
    params.require(:user).permit(:name, :sex, :self_introduction)
  end

end
