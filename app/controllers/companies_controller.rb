class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def edit
    @company = Company.find(params[:id])
  end

  def create
    company = Company.new(company_params)
    company.save!
    redirect_to companies_url, notice: "「#{company.name}」を登録しました。"
  end

  def update
    company = Company.find(params[:id])
    company.update!(company_params)
    redirect_to companies_url, notice: "会社名「#{company.name}」を更新しました。"
  end

  def destroy
    company = Company.find(params[:id])
    company.destroy
    redirect_to companies_url, notice: "会社「#{company.name}」を削除しました。"
  end

  private

  def company_params
    params.require(:company).permit(:name, :description)
  end
end
