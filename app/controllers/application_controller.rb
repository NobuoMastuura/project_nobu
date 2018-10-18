class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    tapispot_index_path
  end

  def after_sign_out_path_for(resource)
    tapispot_index_path
  end

  protected
  # deviseに関連する新しいカラムは以下のように追加する
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name])
    end
end
