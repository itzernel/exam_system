class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
  protect_from_forgery

  def after_sign_in_path_for(resource)
    return super unless resource.is_a?(User)
    return rails_admin_dashboard_path if resource.role?(:admin) || resource.role?(:teacher)
    #return other_url if resource.is?(:students)
  end

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message 
  end
end
