class ApplicationController < ActionController::Base
  helper_method :current_company
  before_action :login_required

  private

  def current_company
    @current_company ||= Company.find_by(id: session[:company_id]) if session[:company_id]
  end

  def login_required
    redirect_to login_path unless current_company
  end
end
