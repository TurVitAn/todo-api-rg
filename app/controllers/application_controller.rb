class ApplicationController < ActionController::API
  include JWTSessions::RailsAuthorization
  rescue_from JWTSessions::Errors::Unauthorized, with: :not_authorized
  rescue_from ActiveRecord::RecordNotFound, with: :not_found_error

  private

  def not_authorized
    render json: { error: I18n.t('controllers.application.not_authorized') }, status: :unauthorized
  end

  def not_found_error
    render json: { error: I18n.t('controllers.application.not_found') }, status: :not_found
  end

  def current_user
    @current_user ||= User.find(payload['user_id'])
  end

  def current_project
    @current_project ||= current_user.projects.find(params[:id])
  end

  def entity_error(status, errors)
    service = EntityErrorService.new(status, errors)
    render json: ErrorSerializer.new(service), status: status
  end
end
