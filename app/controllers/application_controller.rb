class ApplicationController < ActionController::API
  # class ApplicationController < ActionController::API
  #   before_action :authenticate_user!
  #   before_action :update_allowed_parameters, if: :devise_controller?

  #   def json_payload
  #     HashWithIndifferentAccess.new(JSON.parse(request.raw_post))
  #   end

  #   private

  #   def update_allowed_parameters
  #     devise_parameter_sanitizer.permit(:sign_up) do |u|
  #       u.permit(:name, :email, :password, :password_confirmation, :admin)
  #     end
  #     devise_parameter_sanitizer.permit(:account_update) do |u|
  #       u.permit(:name, :email, :password, :password_confirmation, :current_password, :admin)
  #     end
  #   end
  # end

  before_action :set_csrf_cookie
  include ActionController::Cookies
  include ActionController::RequestForgeryProtection
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  private

  def set_csrf_cookie
    cookies['CSRF-TOKEN'] = form_authenticity_token
  end
end
