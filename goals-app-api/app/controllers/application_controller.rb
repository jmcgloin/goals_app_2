class ApplicationController < ActionController::API
	# respond_to :json
  rescue_from ActiveRecord::RecordNotFound, with: :not_foud
  rescue_from AuthorizationError, with: :unauthorized_error

	def render_resource(resource)
    binding.pry()
    if resource.errors.empty?
      render json: resource
    else
      validation_error(resource)
    end
  end

  def validation_error(resource)
    binding.pry()
    render json: {
      errors: [
        {
          status: '400',
          title: 'Bad Request',
          detail: resource.errors,
          code: '100'
        }
      ]
    }, status: :bad_request
  end

  def authorize_owner_resource(resource)
    raise AutorizationError.new if resource.user != current_user
  end

  def unauthorized_error
    render json: { message: 'Unauthorized request' }, status: 401
  end

  def not_foud
    render json: { message: 'Not found' }, status: 404
  end


end
