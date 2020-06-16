class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  include UsersHelper

  respond_to :json

   before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:email, :password, :first_name, :last_name, :phone, :birthdate, :gender)}
    devise_parameter_sanitizer.permit(:sign_in) {|u| u.permit(:email, :password)}
  end
end
