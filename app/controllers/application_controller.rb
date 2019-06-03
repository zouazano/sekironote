class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :search_set

  def search_set
    @q = Boss.ransack(params[:q])
    @bossess = @q.result(distinct: true)
  end

  private

  def search_params
    params.require(:q).permit(:name_cont)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :image, :profile, :lap])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :image, :profile, :lap])
  end
end
