class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_out_path_for(resource_or_scope)
    return new_user_session_url
  end
  
end

