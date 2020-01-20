class RegistrationsController < Devise::RegistrationsController
  respond_to :json

  def create
    # binding.pry()
  	begin
  		super
      # raise ActiveRecord::RecordNotUnique.new
  	rescue ActiveRecord::RecordInvalid => e
  		render_resource(e.record)
  	rescue ActiveRecord::RecordNotUnique => e
      binding.pry()
  		err = OpenStruct.new(errors: { user: 'Already exists' })
  		validation_error(err)
  	end
  end
end
